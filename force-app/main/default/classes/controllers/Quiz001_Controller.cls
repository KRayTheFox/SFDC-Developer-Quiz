/**
 * @description       : 
 * @author            : Kenneth Ray Sr Salesforce Developer. 
 * @group             : 
 * @last modified on  : 02-24-2023
 * @last modified by  : Kenneth Ray, Sr Salesforce Developer. 
**/

/** PLEASE LEAVE COMMENTED 
 * 1. To ensure users have access to approved data, ensure sharing is enforced.
 * 2. To use method within LWC, add correct annotation to expose method to LWC framework.
 * 3. Create query to populate datatable. Conductor will provide object and list of fields.
 * */
public class Quiz001_Controller {

    @AuraEnabled
    public static List<MHUB_Master_Campaign__c> getMHUBMasterCampaignRecords(){
        List<MHUB_Master_Campaign__c> alRecords = new List<MHUB_Master_Campaign__c>();
        try {
            List<MHUB_Master_Campaign__c> allRecords = [SELECT MHUB_Demographic__c, MHUB_Flight_End_Date__c, MHUB_Flight_Start_Date__c, MHUB_Length__c, MHUB_Master_Campaign__c, MHUB_Season__c, MHUB_Sport__c, MHUB_Sport_Sub_Category__c, MHUB_Status__c FROM MHUB_Master_Campaign__c WHERE Id = '' LIMIT 50];
            return alRecords;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
