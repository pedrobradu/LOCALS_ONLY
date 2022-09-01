import { Controller } from "@hotwired/stimulus"
import TomSelect from 'tom-select/dist/js/tom-select.base';

// Connects to data-controller="tomselect"
export default class extends Controller {
  connect() {

    console.log("conectado")
  
    new TomSelect(this.element,{
      persist: false,
      createOnBlur: true,
      create: true
    });
  }
}
