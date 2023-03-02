import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ 'startDateInput', 'endDateInput' ]
  static values = { dates: Object }

  connect() {
    this.#initFlatPickr()
  }

  #initFlatPickr() {
    flatpickr(this.startDateInputTarget, this.#options());
  }

  #options() {
    return {
      ...this.#parsedBookedDates(),
      mode: 'range',
      inline: true,
      disable : [ { from: "2023-03-06", to: "2023-03-08"} ],
      minDate: new Date(),
      "plugins": [new rangePlugin({ input: this.endDateInputTarget})]
    }
  }

  #parsedBookedDates() {
    return this.datesValue
  }
}
