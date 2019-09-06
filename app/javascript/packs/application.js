import "bootstrap";

import Sortable from 'sortablejs';

import "../plugins/flatpickr";

import '@fullcalendar/core/main.css';

import '@fullcalendar/daygrid/main.css';

import { submitForm } from '../components/submitForm';
import { voteFunction, upVoteFunction, downVoteFunction} from '../components/vote';
// import { voteFunction} from '../components/vote';
import { scrollLastMessageIntoView } from '../components/scroll_to_last_message';
import { initSweetalert } from '../components/init_sweetalert';
import calendarInit from '../components/fullcalendar.js';
import { initUpdateNavbarOnScrollHome } from '../components/navbar';
import { initUpdateNavbarOnScrollIndex } from '../components/navbar';
import { taskFunction  } from '../components/task';

import { initCounter } from '../components/init_counter';
import { submitRessourcesSearch } from '../components/ressources_search';

// MAPBOX
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { openMap } from '../components/init_mapbox';
// import { initMapbox } from '../components/init_mapbox';

// import { openMap } from '../components/open_map';

// SELECT2
import { initSelect2 } from "../plugins/init_select2";

// TWEAK TO HAVE ACCESS TO THIS FUNCTION IN VIEWS

window.scrollLastMessageIntoView = scrollLastMessageIntoView;


if (document.querySelector('.map-wrapper')) {
  // initMapbox();
  openMap();
}

if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScrollHome();
}

if (document.querySelector(".indexpage")) {
  initUpdateNavbarOnScrollIndex();
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

// SELECT2
if (document.querySelector('.select2')) {
  initSelect2();
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

window.voteFunction = voteFunction;
window.upVoteFunction = upVoteFunction;
window.downVoteFunction = downVoteFunction;

if (document.querySelector('.messages')) {
  // initMapbox();
  voteFunction();
}
if (document.querySelector('.messages')) {
  // initMapbox();
  scrollLastMessageIntoView();
}

if (document.querySelector('.messages')) {
  // initMapbox();
  upVoteFunction();
}

if (document.querySelector('.messages')) {
  // initMapbox();
  downVoteFunction();
}

// if (document.querySelector('#chatroom')) {
// document.addEventListener(‘DOMContentLoaded’, (event) => {
//   const messages = document.querySelectorAll('.message');
//     const lastMessage = messages[messages.length - 1];
//     lastMessage.scrollIntoView();
// })
// }

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

  if ($("#slide-container").hasClass("rose")) {
  } else {
    $("#slide-container").removeClass("vert");
    $("#slide-container").addClass("rose");
  };

  if ($("#signup").hasClass("button-toggle-rose")) {
  } else {
    $("#signup").removeClass("button-toggle");
    $("#signup").addClass("button-toggle-rose");

    $("#login").removeClass("button-toggle");
    $("#login").addClass("button-toggle-rose");
  };


  if ($(".message-form").hasClass("login")) {
    $(".message-form").removeClass("login");
  }
  $(".message-form").addClass("signup");
});

$("#login").click(function() {
  const container_login = document.getElementById("slide-container");
  $(".message-form").css("transform", "translateX(0)");

  if ($("#slide-container").hasClass("vert")) {
  } else {
    $("#slide-container").removeClass("rose");
    $("#slide-container").addClass("vert");
  };

  if ($("#login").hasClass("button-toggle")) {
  } else {
    $("#login").removeClass("button-toggle-rose");
    $("#login").addClass("button-toggle");

    $("#signup").removeClass("button-toggle-rose");
    $("#signup").addClass("button-toggle");
  };

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




