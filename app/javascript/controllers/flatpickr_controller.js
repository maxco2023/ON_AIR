import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="dashboard-flatpickr"
export default class extends Controller {
  static targets = ['startDateInput', 'endDateInput']
  static values = { dates: Object }

  connect() {
    this.#initFlatPickr()
  }

  #initFlatPickr() {
    flatpickr(this.startDateInputTarget, this.#options());
  }

  #options() {
    const now = new Date();

    return {
      ...this.#parsedBookedDates(),
      mode: 'range',
      inline: true,
      minDate: new Date(),
      "plugins": [new rangePlugin({ input: this.endDateInputTarget })],
      onDayCreate: (Obj, dStr, fp, dayElem) => {
        if (dayElem.dateObj < now) {
          dayElem.classList += ' prevDay';
        }
      }
    }
  }

  #parsedBookedDates() {
    return this.datesValue
  }
}
