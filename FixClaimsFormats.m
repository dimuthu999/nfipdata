function NFIPC = FixClaimsFormats(NFIPC)

% Note: String variables import fine as cells

%% Logical Variables (very hacky solution here because missing values import as numeric and the observations are logical cells)
    % Is there a better way to accomplish this?
if iscell(NFIPC.agricultureStructureIndicator)
    NFIPC.agricultureStructureIndicator(cellfun(@isempty,NFIPC.agricultureStructureIndicator)) = {NaN};
    NFIPC.agricultureStructureIndicator(cellfun(@islogical,NFIPC.agricultureStructureIndicator)) = mat2cell(double(cell2mat(NFIPC.agricultureStructureIndicator(cellfun(@islogical,NFIPC.agricultureStructureIndicator)))),ones(sum(cellfun(@islogical,NFIPC.agricultureStructureIndicator)),1));
    NFIPC.agricultureStructureIndicator = cell2mat(NFIPC.agricultureStructureIndicator);
end

if iscell(NFIPC.elevatedBuildingIndicator)
    NFIPC.elevatedBuildingIndicator(cellfun(@isempty,NFIPC.elevatedBuildingIndicator)) = {NaN};
    NFIPC.elevatedBuildingIndicator(cellfun(@islogical,NFIPC.elevatedBuildingIndicator)) = mat2cell(double(cell2mat(NFIPC.elevatedBuildingIndicator(cellfun(@islogical,NFIPC.elevatedBuildingIndicator)))),ones(sum(cellfun(@islogical,NFIPC.elevatedBuildingIndicator)),1));
    NFIPC.elevatedBuildingIndicator = cell2mat(NFIPC.elevatedBuildingIndicator);
end

if iscell(NFIPC.houseWorship)
    NFIPC.houseWorship(cellfun(@isempty,NFIPC.houseWorship)) = {NaN};
    NFIPC.houseWorship(cellfun(@islogical,NFIPC.houseWorship)) = mat2cell(double(cell2mat(NFIPC.houseWorship(cellfun(@islogical,NFIPC.houseWorship)))),ones(sum(cellfun(@islogical,NFIPC.houseWorship)),1));
    NFIPC.houseWorship = cell2mat(NFIPC.houseWorship);
end

if iscell(NFIPC.nonProfitIndicator)
    NFIPC.nonProfitIndicator(cellfun(@isempty,NFIPC.nonProfitIndicator)) = {NaN};
    NFIPC.nonProfitIndicator(cellfun(@islogical,NFIPC.nonProfitIndicator)) = mat2cell(double(cell2mat(NFIPC.nonProfitIndicator(cellfun(@islogical,NFIPC.nonProfitIndicator)))),ones(sum(cellfun(@islogical,NFIPC.nonProfitIndicator)),1));
    NFIPC.nonProfitIndicator = cell2mat(NFIPC.nonProfitIndicator);
end

if iscell(NFIPC.postFIRMConstructionIndicator)
    NFIPC.postFIRMConstructionIndicator(cellfun(@isempty,NFIPC.postFIRMConstructionIndicator)) = {NaN};
    NFIPC.postFIRMConstructionIndicator(cellfun(@islogical,NFIPC.postFIRMConstructionIndicator)) = mat2cell(double(cell2mat(NFIPC.postFIRMConstructionIndicator(cellfun(@islogical,NFIPC.postFIRMConstructionIndicator)))),ones(sum(cellfun(@islogical,NFIPC.postFIRMConstructionIndicator)),1));
    NFIPC.postFIRMConstructionIndicator = cell2mat(NFIPC.postFIRMConstructionIndicator);
end

if iscell(NFIPC.smallBusinessIndicatorBuilding)
    NFIPC.smallBusinessIndicatorBuilding(cellfun(@isempty,NFIPC.smallBusinessIndicatorBuilding)) = {NaN};
    NFIPC.smallBusinessIndicatorBuilding(cellfun(@islogical,NFIPC.smallBusinessIndicatorBuilding)) = mat2cell(double(cell2mat(NFIPC.smallBusinessIndicatorBuilding(cellfun(@islogical,NFIPC.smallBusinessIndicatorBuilding)))),ones(sum(cellfun(@islogical,NFIPC.smallBusinessIndicatorBuilding)),1));
    NFIPC.smallBusinessIndicatorBuilding = cell2mat(NFIPC.smallBusinessIndicatorBuilding);
end

if iscell(NFIPC.primaryResidence)
    NFIPC.primaryResidence(cellfun(@isempty,NFIPC.primaryResidence)) = {NaN};
    NFIPC.primaryResidence(cellfun(@islogical,NFIPC.primaryResidence)) = mat2cell(double(cell2mat(NFIPC.primaryResidence(cellfun(@islogical,NFIPC.primaryResidence)))),ones(sum(cellfun(@islogical,NFIPC.primaryResidence)),1));
    NFIPC.primaryResidence = cell2mat(NFIPC.primaryResidence);
end

%% Numeric Variables
temp = NaN(height(NFIPC),1);
temp(~cellfun(@isempty,NFIPC.baseFloodElevation)) = cell2mat(NFIPC.baseFloodElevation);
NFIPC.baseFloodElevation = temp;

NFIPC.countyCode = str2double(NFIPC.countyCode);

NFIPC.censusTract = str2double(NFIPC.censusTract);

NFIPC.latitude = str2double(NFIPC.latitude);

NFIPC.longitude = str2double(NFIPC.longitude);

temp = NaN(height(NFIPC),1);
temp(~cellfun(@isempty,NFIPC.lowestAdjacentGrade)) = cell2mat(NFIPC.lowestAdjacentGrade);
NFIPC.lowestAdjacentGrade = temp;

temp = NaN(height(NFIPC),1);
temp(~cellfun(@isempty,NFIPC.lowestFloorElevation)) = cell2mat(NFIPC.lowestFloorElevation);
NFIPC.lowestFloorElevation = temp;

if iscell(NFIPC.numberOfFloorsInTheInsuredBuilding)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.numberOfFloorsInTheInsuredBuilding)) = cell2mat(NFIPC.numberOfFloorsInTheInsuredBuilding);
    NFIPC.numberOfFloorsInTheInsuredBuilding = temp;
end

NFIPC.obstructionType = str2double(NFIPC.obstructionType);

if iscell(NFIPC.amountPaidOnBuildingClaim)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.amountPaidOnBuildingClaim)) = cell2mat(NFIPC.amountPaidOnBuildingClaim);
    NFIPC.amountPaidOnBuildingClaim = temp;
end

if iscell(NFIPC.amountPaidOnContentsClaim)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.amountPaidOnContentsClaim)) = cell2mat(NFIPC.amountPaidOnContentsClaim);
    NFIPC.amountPaidOnContentsClaim = temp;
end

temp = NaN(height(NFIPC),1);
temp(~cellfun(@isempty,NFIPC.amountPaidOnIncreasedCostOfComplianceClaim)) = cell2mat(NFIPC.amountPaidOnIncreasedCostOfComplianceClaim);
NFIPC.amountPaidOnIncreasedCostOfComplianceClaim = temp;

% FIX TO CAPITALIZE C IN CODE
NFIPC.reportedZipcode = str2double(NFIPC.reportedZipcode);

if iscell(NFIPC.policyCount)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.policyCount)) = cell2mat(NFIPC.policyCount);
    NFIPC.policyCount = temp;
end

if iscell(NFIPC.communityRatingSystemDiscount)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.communityRatingSystemDiscount)) = cell2mat(NFIPC.communityRatingSystemDiscount);
    NFIPC.communityRatingSystemDiscount = temp;
end

if iscell(NFIPC.elevationDifference)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.elevationDifference)) = cell2mat(NFIPC.elevationDifference);
    NFIPC.elevationDifference = temp;
end

if iscell(NFIPC.totalBuildingInsuranceCoverage)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.totalBuildingInsuranceCoverage)) = cell2mat(NFIPC.totalBuildingInsuranceCoverage);
    NFIPC.totalBuildingInsuranceCoverage = temp;
end

if iscell(NFIPC.totalContentsInsuranceCoverage)
    temp = NaN(height(NFIPC),1);
    temp(~cellfun(@isempty,NFIPC.totalContentsInsuranceCoverage)) = cell2mat(NFIPC.totalContentsInsuranceCoverage);
    NFIPC.totalContentsInsuranceCoverage = temp;
end

%% Categorical Variables
valueset = {'NaN','0','1','2','3','4'};
catnames = {'Missing','None','Finished Basement/Enclosure','Unfinished Basement/Enclosure','Crawlspace','Subgrade Crawlspace'};
if iscell(NFIPC.basementEnclosureCrawlspace)
    x = NFIPC.basementEnclosureCrawlspace;
    x(cellfun(@isempty,x)) = {NaN};
    NFIPC.basementEnclosureCrawlspace = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);
else
    NFIPC.basementEnclosureCrawlspace = categorical(cellstr(num2str(NFIPC.basementEnclosureCrawlspace)),valueset,catnames);
end

NFIPC.condominiumIndicator(cellfun(@isnumeric,NFIPC.condominiumIndicator)) = {''};
valueset = {'','N','U','A','H','L','T'};
catnames = {'Missing','Not a Condo','Condo Unit','Entire Common Building','CMP High-Rise','CMP Low-Rise','CMP Townhouse'};
NFIPC.condominiumIndicator = categorical(NFIPC.condominiumIndicator,valueset,catnames);

valueset = {'NaN','1','2','3','4'};
catnames = {'Missing','No Elevation Cert (Pre-1982)','No Elevation Cert (Post-1982)','Elevation Cert w/BFE','Elevaton Cert w/o BFE'};
x = NFIPC.elevationCertificateIndicator;
x(cellfun(@isempty,x)) = {NaN};
NFIPC.elevationCertificateIndicator = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);

% x = NFIPC.floodZone;
% x(cellfun(@isempty,x)) = {'NaN'};
% valueset = {'NaN',''};
% catnames = {'Missing',''};
% NFIPC.floodZone = categorical(NFIPC.floodZone);

valueset = {'NaN','1','2','3','4','5','6'};
catnames = {'Missing','Basement/Enclosure/Crawlspace/Subgrade Crawlspace only','Basement/Enclosure/Crawlspace/Subgrade Crawlspace and above','Basement/Enclosure/Crawlspace/Subgrade Crawlspace and above','Lowest floor above ground level and higher floors','Lowest floor above ground level and higher floors','Lowest floor above ground level and higher floors'};
x = NFIPC.locationOfContents;
x(cellfun(@isempty,x)) = {NaN};
NFIPC.locationOfContents = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);

valueset = {'NaN','1','2','3','4'};
catnames = {'Missing','Single Family Residence','2-to-4 Unit Residential','More Than 4 Unit Residential','Non-Residential'};
if iscell(NFIPC.occupancyType)
    x = NFIPC.occupancyType;
    x(cellfun(@isempty,x)) = {NaN};
    NFIPC.occupancyType = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);
else
    NFIPC.occupancyType = categorical(cellstr(num2str(NFIPC.occupancyType)),valueset,catnames);
end

% Whole buncha codes here too for rateMethod

if iscell(NFIPC.state)
    NFIPC.state(cellfun(@isempty,NFIPC.state)) = {'Missing'};
end
NFIPC.state = categorical(NFIPC.state);


%% Date Variables
datefmt = 'yyyy-MM-dd''T''HH:mm:ss.SSS''Z''';
NFIPC.asOfDate = datetime(NFIPC.asOfDate,'InputFormat',datefmt);

NFIPC.dateOfLoss = datetime(NFIPC.dateOfLoss,'InputFormat',datefmt);

NFIPC.originalConstructionDate(cellfun(@isempty,NFIPC.originalConstructionDate)) = {'NaT'};
NFIPC.originalConstructionDate = datetime(NFIPC.originalConstructionDate,'InputFormat',datefmt);

NFIPC.originalNBDate(cellfun(@isempty,NFIPC.originalNBDate)) = {'NaT'};
NFIPC.originalNBDate = datetime(NFIPC.originalNBDate,'InputFormat',datefmt);

%NFIPC.yearOfLoss = datetime(NFIPC.yearOfLoss,'InputFormat',datefmt);

end

