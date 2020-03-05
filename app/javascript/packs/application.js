// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import initNavbarMenu from '../components/menu';
import requestStatus from '../components/request_status';
import { initSweetalert } from '../plugins/init_sweetalert';



const Turbolinks = require("turbolinks")
Turbolinks.start()

document.addEventListener('turbolinks:load', () => {
  const ids = document.querySelectorAll('#events-index, #events-new, #dashboard-show, #events-show, #registrations-edit');
  if(ids.length >= 1){
    initNavbarMenu();
  }
  if(document.getElementById('dashboard-show')){
    requestStatus();
  }
  // if(document.getElementById('')){
  //   initSweetalert();
  // }

    // Do your stuff!
})

// initSweetalert('#sweet-alert-demo', {
//   title: "Request",
//   text: "Request Sent",
//   icon: "success"
// }, (value) => {
//   console.log(value);
// });
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";
