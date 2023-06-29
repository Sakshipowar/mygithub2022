import { LightningElement, wire} from 'lwc';
import queryAccounsByEmployeeNumber from '@salesforce/apex/Accountlstlwc.queryAccounsByEmployeeNumber';

export default class AccountSearch1 extends LightningElement {

    numberOfEmplyoees = null;
    handleChange(event) {
        this.numberOfEmplyoees = event.detail.value;
    }
    reset(){
        this.numberOfEmplyoees = null;
    }
    @wire(queryAccounsByEmployeeNumber,{numberOfEmplyoees : '$numberOfEmployees'})
    accounts;
    
}