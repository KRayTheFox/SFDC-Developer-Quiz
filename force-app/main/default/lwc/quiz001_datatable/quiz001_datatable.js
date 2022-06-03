import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

//import getRecords from '@salesforce/apex/Quiz001_Controller';

export default class Quiz001_datatable extends LightningElement {
    @track data = [];
    columns = [
        { label: 'Name', fieldName: 'Name', type: 'text'}
    ];

    getData(){
        try{
            // Add logic here to retrieve data from apex method
        }catch(error){
            console.error(JSON.stringify(error));
            // Add logic here to show on-screen toast message
            this.dispatchEvent(new ShowToastEvent({
                title: 'Error',
                message: 'Failed'
            }));
        }
    }
}