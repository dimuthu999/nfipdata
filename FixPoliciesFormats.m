function NFIPP = FixPoliciesFormats(NFIPP)

% Note: String variables import fine as cells

%% Logical Variables (very hacky solution here because missing values import as numeric and the observations are logical cells)
    % Is there a better way to accomplish this?
if iscell(NFIPP.agricultureStructureIndicator)
    NFIPP.agricultureStructureIndicator(cellfun(@isempty,NFIPP.agricultureStructureIndicator)) = {NaN};
    NFIPP.agricultureStructureIndicator(cellfun(@islogical,NFIPP.agricultureStructureIndicator)) = mat2cell(double(cell2mat(NFIPP.agricultureStructureIndicator(cellfun(@islogical,NFIPP.agricultureStructureIndicator)))),ones(sum(cellfun(@islogical,NFIPP.agricultureStructureIndicator)),1));
    NFIPP.agricultureStructureIndicator = cell2mat(NFIPP.agricultureStructureIndicator);
end

NFIPP.Properties.VariableNames{12} = 'elevatedBuildingIndicator';
if iscell(NFIPP.elevatedBuildingIndicator)
    NFIPP.elevatedBuildingIndicator(cellfun(@isempty,NFIPP.elevatedBuildingIndicator)) = {NaN};
    NFIPP.elevatedBuildingIndicator(cellfun(@islogical,NFIPP.elevatedBuildingIndicator)) = mat2cell(double(cell2mat(NFIPP.elevatedBuildingIndicator(cellfun(@islogical,NFIPP.elevatedBuildingIndicator)))),ones(sum(cellfun(@islogical,NFIPP.elevatedBuildingIndicator)),1));
    NFIPP.elevatedBuildingIndicator = cell2mat(NFIPP.elevatedBuildingIndicator);
end

if iscell(NFIPP.houseOfWorshipIndicator)
    NFIPP.houseOfWorshipIndicator(cellfun(@isempty,NFIPP.houseOfWorshipIndicator)) = {NaN};
    NFIPP.houseOfWorshipIndicator(cellfun(@islogical,NFIPP.houseOfWorshipIndicator)) = mat2cell(double(cell2mat(NFIPP.houseOfWorshipIndicator(cellfun(@islogical,NFIPP.houseOfWorshipIndicator)))),ones(sum(cellfun(@islogical,NFIPP.houseOfWorshipIndicator)),1));
    NFIPP.houseOfWorshipIndicator = cell2mat(NFIPP.houseOfWorshipIndicator);
end

if iscell(NFIPP.nonProfitIndicator)
    NFIPP.nonProfitIndicator(cellfun(@isempty,NFIPP.nonProfitIndicator)) = {NaN};
    NFIPP.nonProfitIndicator(cellfun(@islogical,NFIPP.nonProfitIndicator)) = mat2cell(double(cell2mat(NFIPP.nonProfitIndicator(cellfun(@islogical,NFIPP.nonProfitIndicator)))),ones(sum(cellfun(@islogical,NFIPP.nonProfitIndicator)),1));
    NFIPP.nonProfitIndicator = cell2mat(NFIPP.nonProfitIndicator);
end

if iscell(NFIPP.postFIRMConstructionIndicator)
    NFIPP.postFIRMConstructionIndicator(cellfun(@isempty,NFIPP.postFIRMConstructionIndicator)) = {NaN};
    NFIPP.postFIRMConstructionIndicator(cellfun(@islogical,NFIPP.postFIRMConstructionIndicator)) = mat2cell(double(cell2mat(NFIPP.postFIRMConstructionIndicator(cellfun(@islogical,NFIPP.postFIRMConstructionIndicator)))),ones(sum(cellfun(@islogical,NFIPP.postFIRMConstructionIndicator)),1));
    NFIPP.postFIRMConstructionIndicator = cell2mat(NFIPP.postFIRMConstructionIndicator);
end

if iscell(NFIPP.smallBusinessIndicatorBuilding)
    NFIPP.smallBusinessIndicatorBuilding(cellfun(@isempty,NFIPP.smallBusinessIndicatorBuilding)) = {NaN};
    NFIPP.smallBusinessIndicatorBuilding(cellfun(@islogical,NFIPP.smallBusinessIndicatorBuilding)) = mat2cell(double(cell2mat(NFIPP.smallBusinessIndicatorBuilding(cellfun(@islogical,NFIPP.smallBusinessIndicatorBuilding)))),ones(sum(cellfun(@islogical,NFIPP.smallBusinessIndicatorBuilding)),1));
    NFIPP.smallBusinessIndicatorBuilding = cell2mat(NFIPP.smallBusinessIndicatorBuilding);
end

if iscell(NFIPP.primaryResidenceIndicator)
    NFIPP.primaryResidenceIndicator(cellfun(@isempty,NFIPP.primaryResidenceIndicator)) = {NaN};
    NFIPP.primaryResidenceIndicator(cellfun(@islogical,NFIPP.primaryResidenceIndicator)) = mat2cell(double(cell2mat(NFIPP.primaryResidenceIndicator(cellfun(@islogical,NFIPP.primaryResidenceIndicator)))),ones(sum(cellfun(@islogical,NFIPP.primaryResidenceIndicator)),1));
    NFIPP.primaryResidenceIndicator = cell2mat(NFIPP.primaryResidenceIndicator);
end

if iscell(NFIPP.construction)
    NFIPP.construction(cellfun(@isempty,NFIPP.construction)) = {NaN};
    NFIPP.construction(cellfun(@islogical,NFIPP.construction)) = mat2cell(double(cell2mat(NFIPP.construction(cellfun(@islogical,NFIPP.construction)))),ones(sum(cellfun(@islogical,NFIPP.construction)),1));
    NFIPP.construction = cell2mat(NFIPP.construction);
end

%% Numeric Variables
temp = NaN(height(NFIPP),1);
temp(~cellfun(@isempty,NFIPP.baseFloodElevation)) = cell2mat(NFIPP.baseFloodElevation);
NFIPP.baseFloodElevation = temp;

NFIPP.countyCode = str2double(NFIPP.countyCode);

NFIPP.censusTract = str2double(NFIPP.censusTract);

NFIPP.latitude = str2double(NFIPP.latitude);

NFIPP.longitude = str2double(NFIPP.longitude);

temp = NaN(height(NFIPP),1);
temp(~cellfun(@isempty,NFIPP.lowestAdjacentGrade)) = cell2mat(NFIPP.lowestAdjacentGrade);
NFIPP.lowestAdjacentGrade = temp;

NFIPP.Properties.VariableNames{23} = 'lowestFloorElevation';
temp = NaN(height(NFIPP),1);
temp(~cellfun(@isempty,NFIPP.lowestFloorElevation)) = cell2mat(NFIPP.lowestFloorElevation);
NFIPP.lowestFloorElevation = temp;

if iscell(NFIPP.numberOfFloorsInTheInsuredBuilding)
    temp = NaN(height(NFIPP),1);
    temp(~cellfun(@isempty,NFIPP.numberOfFloorsInTheInsuredBuilding)) = cell2mat(NFIPP.numberOfFloorsInTheInsuredBuilding);
    NFIPP.numberOfFloorsInTheInsuredBuilding = temp;
end

NFIPP.obstructionType = str2double(NFIPP.obstructionType);

% if iscell(NFIPP.amountPaidOnBuildingClaim)
%     temp = NaN(height(NFIPP),1);
%     temp(~cellfun(@isempty,NFIPP.amountPaidOnBuildingClaim)) = cell2mat(NFIPP.amountPaidOnBuildingClaim);
%     NFIPP.amountPaidOnBuildingClaim = temp;
% end

% if iscell(NFIPP.amountPaidOnContentsClaim)
%     temp = NaN(height(NFIPP),1);
%     temp(~cellfun(@isempty,NFIPP.amountPaidOnContentsClaim)) = cell2mat(NFIPP.amountPaidOnContentsClaim);
%     NFIPP.amountPaidOnContentsClaim = temp;
% end

% temp = NaN(height(NFIPP),1);
% temp(~cellfun(@isempty,NFIPP.amountPaidOnIncreasedCostOfComplianceClaim)) = cell2mat(NFIPP.amountPaidOnIncreasedCostOfComplianceClaim);
% NFIPP.amountPaidOnIncreasedCostOfComplianceClaim = temp;

NFIPP.reportedZipCode = str2double(NFIPP.reportedZipCode);

if iscell(NFIPP.policyCount)
    temp = NaN(height(NFIPP),1);
    temp(~cellfun(@isempty,NFIPP.policyCount)) = cell2mat(NFIPP.policyCount);
    NFIPP.policyCount = temp;
end

% if iscell(NFIPP.communityRatingSystemDiscount)
%     temp = NaN(height(NFIPP),1);
%     temp(~cellfun(@isempty,NFIPP.communityRatingSystemDiscount)) = cell2mat(NFIPP.communityRatingSystemDiscount);
%     NFIPP.communityRatingSystemDiscount = temp;
% end

if iscell(NFIPP.elevationDifference)
    temp = NaN(height(NFIPP),1);
    temp(~cellfun(@isempty,NFIPP.elevationDifference)) = cell2mat(NFIPP.elevationDifference);
    NFIPP.elevationDifference = temp;
end

if iscell(NFIPP.totalBuildingInsuranceCoverage)
    temp = NaN(height(NFIPP),1);
    temp(~cellfun(@isempty,NFIPP.totalBuildingInsuranceCoverage)) = cell2mat(NFIPP.totalBuildingInsuranceCoverage);
    NFIPP.totalBuildingInsuranceCoverage = temp;
end

if iscell(NFIPP.totalContentsInsuranceCoverage)
    temp = NaN(height(NFIPP),1);
    temp(~cellfun(@isempty,NFIPP.totalContentsInsuranceCoverage)) = cell2mat(NFIPP.totalContentsInsuranceCoverage);
    NFIPP.totalContentsInsuranceCoverage = temp;
end

if iscell(NFIPP.totalInsurancePremiumOfThePolicy)
    temp = NaN(height(NFIPP),1);
    temp(~cellfun(@isempty,NFIPP.totalInsurancePremiumOfThePolicy)) = cell2mat(NFIPP.totalInsurancePremiumOfThePolicy);
    NFIPP.totalInsurancePremiumOfThePolicy = temp;
end

%% Categorical Variables
valueset = {'NaN','0','1','2','3','4'};
catnames = {'Missing','None','Finished Basement/Enclosure','Unfinished Basement/Enclosure','Crawlspace','Subgrade Crawlspace'};
if iscell(NFIPP.basementEnclosureCrawlspace)
    x = NFIPP.basementEnclosureCrawlspace;
    x(cellfun(@isempty,x)) = {NaN};
    NFIPP.basementEnclosureCrawlspace = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);
else
    NFIPP.basementEnclosureCrawlspace = categorical(cellstr(num2str(NFIPP.basementEnclosureCrawlspace)),valueset,catnames);
end

NFIPP.condominiumIndicator(cellfun(@isnumeric,NFIPP.condominiumIndicator)) = {''};
valueset = {'','N','U','A','H','L','T'};
catnames = {'Missing','Not a Condo','Condo Unit','Entire Common Building','CMP High-Rise','CMP Low-Rise','CMP Townhouse'};
NFIPP.condominiumIndicator = categorical(NFIPP.condominiumIndicator,valueset,catnames);

valueset = {'NaN','1','2','3','4'};
catnames = {'Missing','No Elevation Cert (Pre-1982)','No Elevation Cert (Post-1982)','Elevation Cert w/BFE','Elevaton Cert w/o BFE'};
x = NFIPP.elevationCertificateIndicator;
x(cellfun(@isempty,x)) = {NaN};
NFIPP.elevationCertificateIndicator = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);

% x = NFIPC.floodZone; % way too many codes to categorize
% x(cellfun(@isempty,x)) = {'NaN'};
% valueset = {'NaN',''};
% catnames = {'Missing',''};
% NFIPC.floodZone = categorical(NFIPC.floodZone);

valueset = {'NaN','1','2','3','4','5','6'};
catnames = {'Missing','Basement/Enclosure/Crawlspace/Subgrade Crawlspace only','Basement/Enclosure/Crawlspace/Subgrade Crawlspace and above','Basement/Enclosure/Crawlspace/Subgrade Crawlspace and above','Lowest floor above ground level and higher floors','Lowest floor above ground level and higher floors','Lowest floor above ground level and higher floors'};
x = NFIPP.locationOfContents;
x(cellfun(@isempty,x)) = {NaN};
NFIPP.locationOfContents = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);

valueset = {'NaN','1','2','3','4'};
catnames = {'Missing','Single Family Residence','2-to-4 Unit Residential','More Than 4 Unit Residential','Non-Residential'};
if iscell(NFIPP.occupancyType)
    x = NFIPP.occupancyType;
    x(cellfun(@isempty,x)) = {NaN};
    NFIPP.occupancyType = categorical(cellstr(num2str(cell2mat(x))),valueset,catnames);
else
    NFIPP.occupancyType = categorical(cellstr(num2str(NFIPP.occupancyType)),valueset,catnames);
end

% Whole buncha codes here too for rateMethod

NFIPP.Properties.VariableNames{37} = 'state';
if iscell(NFIPP.state)
    NFIPP.state(cellfun(@isempty,NFIPP.state)) = {'Missing'};
end
NFIPP.state = categorical(NFIPP.state);

valueset = {'NaN','0','1','2','3','4','5','9','A','B','C','D','E','F','G'};
catnames = {'Missing','$500','$1,000','$2,000','$3,000','$4,000','$5,000','$750','$10,000','$15,000','$20,000','$25,000','$50,000','$1,250','$1,500'};
x = NFIPP.deductibleAmountInBuildingCoverage;
x(cellfun(@isempty,x)) = {'NaN'};
NFIPP.deductibleAmountInBuildingCoverage = categorical(x,valueset,catnames);

valueset = {'NaN','0','1','2','3','4','5','9','A','B','C','D','E','F','G'};
catnames = {'Missing','$500','$1,000','$2,000','$3,000','$4,000','$5,000','$750','$10,000','$15,000','$20,000','$25,000','$50,000','$1,250','$1,500'};
x = NFIPP.deductibleAmountInContentsCoverage;
x(cellfun(@isempty,x)) = {'NaN'};
NFIPP.deductibleAmountInContentsCoverage = categorical(x,valueset,catnames);

x = NFIPP.regularEmergencyProgramIndicator;
missingind = cellfun(@isempty,x);
x(missingind) = {'M'};
NFIPP.regularEmergencyProgramIndicator = double(cell2mat(x)=='E');
NFIPP.regularEmergencyProgramIndicator(missingind) = NaN;

valueset = {'NaN','1','3','9'};
catnames = {'Missing','1-year','3-year','Between 1 and 3 years'};
if iscell(NFIPP.policyTermIndicator)
    x = NFIPP.policyTermIndicator;
    x(cellfun(@isempty,x)) = {NaN};
    NFIPP.policyTermIndicator = categorical(cellstr(num2str(x)),valueset,catnames);
else
    NFIPP.policyTermIndicator = categorical(cellstr(num2str(NFIPP.policyTermIndicator)),valueset,catnames);
end

%% Date Variables
datefmt = 'yyyy-MM-dd''T''HH:mm:ss.SSS''Z''';
% NFIPP.asOfDate = datetime(NFIPP.asOfDate,'InputFormat',datefmt);

% NFIPP.dateOfLoss = datetime(NFIPP.dateOfLoss,'InputFormat',datefmt);

NFIPP.originalConstructionDate(cellfun(@isempty,NFIPP.originalConstructionDate)) = {'NaT'};
NFIPP.originalConstructionDate = datetime(NFIPP.originalConstructionDate,'InputFormat',datefmt);

NFIPP.originalNBDate(cellfun(@isempty,NFIPP.originalNBDate)) = {'NaT'};
NFIPP.originalNBDate = datetime(NFIPP.originalNBDate,'InputFormat',datefmt);

% NFIPP.yearofLoss = datetime(NFIPP.yearofLoss,'InputFormat',datefmt);

NFIPP.cancellationDateOfFloodPolicy(cellfun(@isempty,NFIPP.cancellationDateOfFloodPolicy)) = {'NaT'};
NFIPP.cancellationDateOfFloodPolicy = datetime(NFIPP.cancellationDateOfFloodPolicy,'InputFormat',datefmt);

NFIPP.policyEffectiveDate(cellfun(@isempty,NFIPP.policyEffectiveDate)) = {'NaT'};
NFIPP.policyEffectiveDate = datetime(NFIPP.policyEffectiveDate,'InputFormat',datefmt);

NFIPP.policyTerminationDate(cellfun(@isempty,NFIPP.policyTerminationDate)) = {'NaT'};
NFIPP.policyTerminationDate = datetime(NFIPP.policyTerminationDate,'InputFormat',datefmt);


end

