import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    console.log("hello")
    console.log(this.startTarget)
    flatpickr(this.element)


  }
}
