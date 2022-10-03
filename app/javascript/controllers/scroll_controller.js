import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll"
export default class extends Controller {
  connect() {
    super.connect()
    console.log('Do what you want here.')
  }

  // You can set default options in this getter for all your anchors.
  get defaultOptions() {
    return {
      offset: 60,
      behavior: 'auto',
    }
  }
}
