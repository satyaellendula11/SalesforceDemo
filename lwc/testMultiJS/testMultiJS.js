import { LightningElement } from 'lwc';
import { showFirstName, showLastName, assignTemplate} from './util';
export default class TestMultiJS extends LightningElement {


    handleClick()
    {
        assignTemplate(this.template);
        showFirstName(this.template);
        showLastName(this.template);
    }
}