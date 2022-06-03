import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

/* PLEASE LEAVE COMMENTED 
 * As part of our team, you'll be responsible for managing existing LWCs, and if applicable, create new ones.   
 * For this quiz, you're tasking with completing a LWC. We've purposely excluded key features to test your working knowledge of LWC. 
 * 
 * OBJECTIVE:
 * Display data using a simple datatable.
 * 
 * REQUIREMENTS:
 * 1. Using imperative apex, retrieve data on page load.
 * 2. In the event of a failure, catch and show error using toast message.
 * */

export default class Quiz001_datatable extends LightningElement {
    @track data = [];
    columns = [];

    getData(){
        try{

        }catch(error){
            
        }
    }
}