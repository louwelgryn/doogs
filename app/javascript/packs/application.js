import "bootstrap";

import Sortable from 'sortablejs';

import '@fullcalendar/core/main.css';

import '@fullcalendar/daygrid/main.css';

import { submitForm } from '../components/submitForm';
import { voteFunction } from '../components/vote';
// import { scrollLastMessageIntoView } from '../components/scroll_to_last_message';
// import { scrollLastMessageIntoView } from '../components/scroll_to_last_message';

import { initSweetalert } from '../components/init_sweetalert';
import calendarInit from '../components/fullcalendar.js';
// import onClickDescription from '../components/fullcalendar.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { taskFunction  } from '../components/task';

import { initCounter } from '../components/init_counter';
import { submitRessourcesSearch } from '../components/ressources_search';

// MAPBOX
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { openMap } from '../components/init_mapbox';
// import { initMapbox } from '../components/init_mapbox';

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

if (document.querySelector("#ressources-form")) {
  submitRessourcesSearch();
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


/// PARTICIPATION A UN EVENEMENT ///
const participants = [];
const volunteers = document.querySelectorAll(".participation-user-button");
const participantsInput = document.getElementById("participants_reunion");

volunteers.forEach((volunteer) => {
  volunteer.addEventListener("click", (event) => {
    event.preventDefault();
    volunteer.classList.add("avatar-clicked");
    participants.push(Number.parseInt(volunteer.innerHTML.slice(0,7).trim(),10));
    participantsInput.value = participants;
    console.log(participants);
  });
});

/// ASSIGNEMENT A UNE TACHE ///
const assignes = document.querySelectorAll(".task-user-button");
const userInputNormale = document.getElementById("user_task_normale");
const userInputUrgente = document.getElementById("user_task_urgente");
const userInputPrioritaire = document.getElementById("user_task_prioritaire");


assignes.forEach((assigne) => {
  assigne.addEventListener("click", (event) => {
    event.preventDefault();
    assigne.classList.add("avatar-clicked");
    console.log(Number.parseInt(assigne.innerHTML.slice(0,7).trim(),10));
    const assignement = Number.parseInt(assigne.innerHTML.slice(0,7).trim(),10);
    userInputNormale.value = assignement;
    userInputUrgente.value = assignement;
    userInputPrioritaire.value = assignement;
  });
});


if (document.querySelector('.messages')) {
  // initMapbox();
  voteFunction();
}

// if (document.querySelector('#new_message')) {
//   // initMapbox();
//   DomReload();
// }

//   console.log(upvote.dataset.id)
//  const url = `http://http://localhost:3000/projects/118/dashboard#chatroom/?message_id=${upvote.dataset.id}`
//   url.click()
// })


/// FORMULAIRE CALENDRIER ///
$("#signup").click(function() {
  $(".message-form").css("transform", "translateX(100%)");
  if ($(".message-form").hasClass("login")) {
    $(".message-form").removeClass("login");
  }
  $(".message-form").addClass("signup");
});

$("#login").click(function() {
  $(".message-form").css("transform", "translateX(0)");
  if ($(".message-form").hasClass("login")) {
    $(".message-form").removeClass("signup");
  }
  $(".message-form").addClass("login");
});


/// CIRCLES ///
const displays = document.querySelectorAll('.note-display');
const transitionDuration = 900;

displays.forEach(display => {
  let progress = display.querySelector('.circle__progress--fill');
  let radius = progress.r.baseVal.value;
  let circumference = 2 * Math.PI * radius;
  let note = parseFloat(display.dataset.note);
  let offset = circumference * (15 - note) / 15;

  progress.style.setProperty('--transitionDuration', `${transitionDuration}ms`);
  progress.style.setProperty('--initialStroke', circumference);

  setTimeout(() => progress.style.strokeDashoffset = offset, 100);
});





