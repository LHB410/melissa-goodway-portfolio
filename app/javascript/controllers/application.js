import { Application } from "@hotwired/stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import ScrollTo from "stimulus-scroll-to"


const application = Application.start()
application.register('scroll-to', ScrollTo)
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))


// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
