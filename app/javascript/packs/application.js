import "bootstrap";

import Sortable from 'sortablejs';

import '@fullcalendar/core/main.css';

import '@fullcalendar/daygrid/main.css';

import { submitForm } from '../components/submitForm';
// import { scrollLastMessageIntoView } from '../components/scroll_to_last_message';
// import { scrollLastMessageIntoView } from '../components/scroll_to_last_message';

import { initSweetalert } from '../components/init_sweetalert';
import calendarInit from '../components/fullcalendar.js';
// import onClickDescription from '../components/fullcalendar.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { taskFunction  } from '../components/task';

import { initCounter } from '../components/init_counter';

// MAPBOX
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { openMap } from '../components/init_mapbox';

// import { openMap } from '../components/open_map';

if (document.querySelector('.map-wrapper')) {
  // initMapbox();
  openMap();
}

if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

if (document.querySelector(".filter-search")) {
  submitForm();
}

if (document.querySelector("#counter-target")) {
  initCounter();
}

calendarInit();

window.initSweetalert = initSweetalert;

// onClickDescription();

if (document.querySelector("#roadmap")) {
  taskFunction()
};

function scrollLastMessageIntoView() {
const messages = document.querySelectorAll('.message');
    const lastMessage = messages[messages.length - 1];
    lastMessage.scrollIntoView();
}


// TAB NAVIGATION //
$(document).ready(() => {
  let url = location.href.replace(/\/$/, "");

  if (location.hash) {
    const hash = url.split("#");
    $('#myTab a[href="#'+hash[1]+'"]').tab("show");
    url = location.href.replace(/\/#/, "#");
    history.replaceState(null, null, url);
    setTimeout(() => {
      $(window).scrollTop(0);
    }, 400);
  }

  $('a[data-toggle="tab"]').on("click", function() {
    let newUrl;
    const hash = $(this).attr("href");
    if(hash == "#home") {
      newUrl = url.split("#")[0];
    } else {
      newUrl = url.split("#")[0] + hash;
    }
    newUrl += "/";
    history.replaceState(null, null, newUrl);
  });
});



// const redirection = document.getElementById("submit-calendar")

/// PARTICIPATION A UN EVENEMENT ///
const participants = [];
const volunteers = document.querySelectorAll(".participation-user-button");
const participantsInput = document.getElementById("event_participants");

volunteers.forEach((volunteer) => {
  volunteer.addEventListener("click", (event) => {
    event.preventDefault();
    volunteer.classList.add("avatar-clicked");
    participants.push(Number.parseInt(volunteer.innerHTML[0],10));
    participantsInput.value = participants;
  });
});


// const newEventButton = document.getElementById("submit-calendar");
// const participationsButtons = document.querySelectorAll(".submit-participation");
// newEventButton.addEventListener("click", (event) => {
//   participationsButtons.forEach((button) => {
//     button.click();
//     console.log("click effectué!")
//   });
// });



