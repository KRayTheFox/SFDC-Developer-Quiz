import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

/* PLEASE LEAVE COMMENTED 
 * As part of our team, you'll be responsible for managing existing LWCs, and if applicable, create new ones.   
 * For this quiz, you're tasking with completing a LWC. We've purposely excluded key features to test your working knowledge of LWC. 
 * 
 * 
 * REQUIREMENTS:
 * 1. Using imperative apex, retrieve data on page load.
 * 2. In the event of a failure, catch and show error using toast message.
 * */

export default class Quiz001_datatable extends LightningElement {
    connectedCallback(){
        this.getMHUBMasterCampaignRecordsFromServer();
    }
    
    @track data = [];
    columns = [
        { label: 'MHUB_Demographic__c', fieldName: 'MHUB_Demographic__c' },
        { label: 'MHUB_Flight_End_Date__c', fieldName: 'MHUB_Flight_End_Date__c' },
        { label: 'MHUB_Flight_Start_Date__c', fieldName: 'MHUB_Flight_Start_Date__c' },
        { label: 'MHUB_Length__c', fieldName: 'MHUB_Length__c' },
        { label: 'MHUB_Season__c', fieldName: 'MHUB_Season__c' },
        { label: 'MHUB_Sport__c', fieldName: 'MHUB_Sport__c' },
        { label: 'MHUB_Sport_Sub_Category__c', fieldName: 'MHUB_Sport_Sub_Category__c' },
        { label: 'MHUB_Status__c', fieldName: 'MHUB_Status__c' }
    ];

    getMHUBMasterCampaignRecordsFromServer(){
        return getMHUBMasterCampaignRecords({
        })
        .then((result) => {
            this.data = result;
            console.log(JSON.stringify(this.data));
        })
        .catch((error) => {
            console.error(error);
            this.showToast('Error', error.message, 'error', 'pester');
        })
        .finally(() => {});
    }

    // Show Toast Event
    showToast(title, message, variant, mode) {
        this.dispatchEvent(
            new ShowToastEvent({
                title: title,
                message: message,
                variant: variant,
                mode: mode
            })
        );
    }
}
