import { Controller } from "@hotwired/stimulus"
import Scroller from "/Users/laurabrooks/code/LHB410/melissa-portfolio/melissa-goodway-portfolio/app/javascript/packs/scroller-main/dist/scroller-es6.min.js";

// Connects to data-controller="scroll-to"
export default class extends Controller {
  connect() {
    super.connect()
    console.log('Do what you want here.')
    new Scroller({
      linkSelector: "a",
      offsetTop: 120,
    });

  }
}


