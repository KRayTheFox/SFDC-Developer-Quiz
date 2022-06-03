
Id masterRecordTypeId = [SELECT Id FROM RecordType WHERE SObjectType ='MHUB_Master_Campaign__c' 
    AND DeveloperName = 'MHUB_Master_Campaign' LIMIT 1].Id;
Id secondaryRecordTypeId = [SELECT Id FROM RecordType WHERE SObjectType ='MHUB_Master_Campaign__c' 
    AND DeveloperName = 'MHUB_Secondary_Campaign' LIMIT 1].Id;

Integer count = 1;
List<MHUB_Master_Campaign__c> campaignRecords = new List<MHUB_Master_Campaign__c>();

while (count < 6) {

    MHUB_Master_Campaign__c master = new MHUB_Master_Campaign__c(
        Name = 'Master Campaign ' + count,
        MHUB_Season__c = '2022',
        MHUB_Sport__c = 'MLB',
        MHUB_Sport_Sub_Category__c = 'MLB',
        MHUB_Status__c = 'Not Started',
        RecordTypeId = masterRecordTypeId
        );
    
    insert master;

     MHUB_Master_Campaign__c secondary = new MHUB_Master_Campaign__c(
        Name = 'Secondary Campaign ' + count,
        MHUB_Season__c = '2022',
        MHUB_Sport__c = 'MLB',
        MHUB_Sport_Sub_Category__c = 'MLB',
        MHUB_Status__c = 'Not Started',
        RecordTypeId = secondaryRecordTypeId,
        MHUB_Master_Campaign__c = master.Id
        );
    campaignRecords.add(secondary);

    count++;
}

insert campaignRecords;
