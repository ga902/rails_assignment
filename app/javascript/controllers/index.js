// Import and register all your controllers from the importmap under controllers/*


// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)

$( document ).ready(function() {
  console.log( "document ready!" );
});