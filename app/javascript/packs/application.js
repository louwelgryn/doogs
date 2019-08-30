import "bootstrap";

import Sortable from 'sortablejs';

import '@fullcalendar/core/main.css';
import '@fullcalendar/daygrid/main.css';

import { initSweetalert } from '../components/init_sweetalert';
import calendarInit from '../components/fullcalendar.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { submitForm } from '../components/submitForm';

if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

if (document.getElementById('calendar')) {
  calendarInit();
}

window.initSweetalert = initSweetalert;

const options = {
  group: "drag",
  draggable: ".project-cards",
  animation: 150,
  onAdd: function (event) {
    const element = event.item;
    console.log(event.from.id)
    const link = element.querySelector("a");
   const newLink = link.href + "?priority_level=" + event.to.id;
    link.setAttribute('href', newLink);
    link.click()
   const task_status = element.querySelector(".task-status")
    task_status.innerHTML = event.to.id
console.log(task_status.classList)


    if (event.to.id === "Normale") {

     if (task_status.innerHTML === "Urgente") {
      task_status.classList.remove("btn-orange")
    } else if (task_status.innerHTML === "Prioritaire") {
      task_status.classList.remove("btn-red")
    } else {
    }
    task_status.classList.add('btn-yellow')
     } else if (event.to.id === "Urgente") {

      if (task_status.innerHTML === "Normale") {
      task_status.classList.remove("btn-yellow")
    } else if (task_status.innerHTML === "Prioritaire") {
      task_status.classList.remove("btn-red")
    } else {
    }
      task_status.classList.add('btn-orange')
    } else {

       if (task_status.innerHTML === "Urgente") {
      task_status.classList.remove("btn-orange")
    } else if (task_status.innerHTML === "Normale") {
      task_status.classList.remove("btn-yellow")
    } else {
    }
      task_status.classList.add('btn-red')
    }

  }
};

function deleteColor(element) {
  console.log(element)
  console.log(element.innerHTML)
  console.log(element.classList)

  if (element.innerHTML === "Normale") {
    element.classList.remove("btn-yellow")
  } else if (element.innerHTML === "Urgente") {
      element.classList.remove("btn-orange")
    } else if (element.innerHTML === "Prioritaire") {
      element.classList.remove("btn-red")
    } else {

    }
}


const listWithHandleone = document.querySelector("#Normale")
const initSortableOne = () => {
  // Sortable.create(listWithHandleone);
  const sortable = new Sortable(listWithHandleone, options)
};

initSortableOne()

if (document.querySelector('.filter-search')) {
  submitForm();
}

const listWithHandletwo = document.querySelector("#Prioritaire")
const initSortableTwo = () => {
  // Sortable.create(listWithHandletwo);
  const sortable = new Sortable(listWithHandletwo, options)
};


initSortableTwo()


const listWithHandlethree = document.querySelector("#Urgente")
const initSortableThree = () => {
  // Sortable.create(listWithHandletwo);
  const sortable = new Sortable(listWithHandlethree, options)
};

initSortableThree()




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
