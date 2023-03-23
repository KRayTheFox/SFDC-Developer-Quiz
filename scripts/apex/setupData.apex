
Id masterRecordTypeId = [SELECT Id FROM RecordType WHERE SObjectType ='MHUB_Master_Campaign__c' 
    AND DeveloperName = 'MHUB_Master_Campaign' LIMIT 1].Id;
Id secondaryRecordTypeId = [SELECT Id FROM RecordType WHERE SObjectType ='MHUB_Master_Campaign__c' 
    AND DeveloperName = 'MHUB_Secondary_Campaign' LIMIT 1].Id;

Integer count = 1;
List<MHUB_Master_Campaign__c> campaignRecords = new List<MHUB_Master_Campaign__c>();

campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX PBA',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2019/02/fox-pba.jpg',
        RecordTypeId = masterRecordTypeId
));

campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX Motorsports Racing',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2016/12/FOX-SPORTS-RACING_LOGO.jpg',
        RecordTypeId = masterRecordTypeId
));

campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX PBC',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2016/12/PBC-on-FOX_Header-Image_1040x585.jpg',
        RecordTypeId = masterRecordTypeId
));

campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX College Football',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2018/01/FOX-College-Football.png',
        RecordTypeId = masterRecordTypeId
));
campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX College Hoops',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2018/01/FOX-College-Hoops.png',
        RecordTypeId = masterRecordTypeId
));

campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX NASCAR',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2016/12/FOX-NASCAR-Press-Pass.jpg',
        RecordTypeId = masterRecordTypeId
));

campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX WWE',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2019/09/Slide1.png',
        RecordTypeId = masterRecordTypeId
));

campaignRecords.add(
    new MHUB_Master_Campaign__c(
        Name = 'FOX Soccer',
        MHUB_Season__c = '2022',
        MHUB_Status__c = 'Not Started',
        MHUB_Image_Url__c = 'https://foxsports-wordpress-www-prsupports-prod.s3.amazonaws.com/uploads/sites/2/2022/06/FOX_SOCCER.png',
        RecordTypeId = masterRecordTypeId
));

insert campaignRecords;