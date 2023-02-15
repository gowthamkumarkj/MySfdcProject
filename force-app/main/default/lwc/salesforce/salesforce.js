import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Sales';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}