import "bootstrap";
import calendarInit from 'components/fullcalendar';
import '@fullcalendar/core/main.css';
import '@fullcalendar/daygrid/main.css';

calendarInit();

import { initUpdateNavbarOnScroll } from '../components/navbar';
if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}


// SWEET ALERT //
import { initSweetalert } from '../components/init_sweetalert';
window.initSweetalert = initSweetalert;






// PROGRESS BAR
const display = document.querySelector('.progress_bar');
const transitionDuration = 900;


let progress = display.querySelector('.line__progress--fill');
let radius = progress.r.baseVal.value;
let circumference = 2 * Math.PI * radius;

progress.style.setProperty('--transitionDuration', `${transitionDuration}ms`);
progress.style.setProperty('--initialStroke');

setTimeout(() => progress.style.strokeDashoffset = 50, 100);



var bar = new ProgressBar.Line(container, {
  strokeWidth: 4,
  easing: 'easeInOut',
  duration: 1400,
  color: '#FFEA82',
  trailColor: '#eee',
  trailWidth: 1,
  svgStyle: {width: '100%', height: '100%'},
  from: {color: '#FFEA82'},
  to: {color: '#ED6A5A'},
  step: (state, bar) => {
    bar.path.setAttribute('stroke', state.color);
  }
});

bar.animate(1.0);  // Number from 0.0 to 1.0
>>>>>>> master
