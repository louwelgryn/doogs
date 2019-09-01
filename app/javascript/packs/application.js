import "bootstrap";

import Sortable from 'sortablejs';


import '@fullcalendar/core/main.css';
import '@fullcalendar/daygrid/main.css';

import { submitForm } from '../components/submitForm';


import { initSweetalert } from '../components/init_sweetalert';
import calendarInit from '../components/fullcalendar.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { taskFunction  } from '../components/task';

if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

if (document.querySelector(".filter-search")) {
  submitForm();
}

calendarInit();
window.initSweetalert = initSweetalert;

if (document.querySelector("#roadmap")) {
  taskFunction()
};


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

// redirection.addEventListener("click", (event) => {
// //   console.log("hello");
// //   console.log("goodbye");
//   window.location = document.location.toString();
// });







// // PROGRESS BAR
// const display = document.querySelector('.progress_bar');
// const transitionDuration = 900;


// let progress = display.querySelector('.line__progress--fill');
// let radius = progress.r.baseVal.value;
// let circumference = 2 * Math.PI * radius;

// progress.style.setProperty('--transitionDuration', `${transitionDuration}ms`);
// progress.style.setProperty('--initialStroke');

// setTimeout(() => progress.style.strokeDashoffset = 50, 100);



// var bar = new ProgressBar.Line(container, {
//   strokeWidth: 4,
//   easing: 'easeInOut',
//   duration: 1400,
//   color: '#FFEA82',
//   trailColor: '#eee',
//   trailWidth: 1,
//   svgStyle: {width: '100%', height: '100%'},
//   from: {color: '#FFEA82'},
//   to: {color: '#ED6A5A'},
//   step: (state, bar) => {
//     bar.path.setAttribute('stroke', state.color);
//   }
// });

// bar.animate(1.0);  // Number from 0.0 to 1.0




