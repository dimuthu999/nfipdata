function [out,N] = parread(ds)
% Find current parallel pool
%gcp;
% Set number of partitions given the current pool
Npart = numpartitions(ds,gcp);
% Extract data
out = [];
N = 0;
parfor i=1:Npart
    subds = partition(ds,Npart,i);
    subN = 0;
    subout = [];
    while hasdata(subds)
        dataChunk = read(subds);clc
        subN = subN + height(dataChunk);
        subout = [subout; dataChunk];
    end
    out = [out;subout];
    N = N + subN;
end
reset(ds)

end

