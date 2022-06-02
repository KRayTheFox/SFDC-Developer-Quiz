/**
 * @description       : 
 * @author            : Kenneth Ray Sr Salesforce Developer. 
 * @group             : 
 * @last modified on  : 06-02-2022
 * @last modified by  : Kenneth Ray, Sr Salesforce Developer. 
**/

// Enforce sharing
public class Quiz001_Controller {

    @AuraEnabled(cacheable=false)
    public static string methodName(){
        try {
            // Add query from Rhea's other tests here.
            return '';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
