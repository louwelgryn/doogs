import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';

// import '@fullcalendar/core/main.css';
// import '@fullcalendar/daygrid/main.css';

const monthLetters = {
  1: 'Janvier',
  2: 'Février',
  3: 'Mars',
  4: 'Avril',
  5: 'Mai',
  6: 'Juin',
  7: 'Juillet',
  8: 'Août',
  9: 'Septembre',
  10: 'Octobre',
  11: 'Novembre',
  12: 'Décembre',
};

const calendarInit = () => {

  const calendarEl = document.getElementById('calendar');


  if (calendarEl) {
    document.addEventListener('DOMContentLoaded', function() {
      var calendar = new Calendar(calendarEl, {
        fixedWeekCount: false,
        plugins: [ dayGridPlugin, interactionPlugin, timeGridPlugin ],
        themeSystem: 'bootstrap', height: 550, width: 400,
        events: gon.events,

        eventClick: function(info) {
          $('#calendarModal').modal('show');
          const eventName = document.getElementById('event-title');
          eventName.innerHTML = info.event.title;

          const eventDescription = document.getElementById('event-description');
          eventDescription.innerHTML = info.event.extendedProps.description;

          // const eventStartTime = document.getElementById('event-start-date');
          // eventStartTime.innerHTML = info.event.extendedProps.start_time;
        },

        // eventRender: function(event, element) {
        //   console.log(event);
        //   console.log(event.extendedProps.description);
        // }

        eventRender: function(info) {
          if (info.event.extendedProps.status === "perso") {
            info.el.classList.add("fc-event-perso")
          } else {
            info.el.classList.add("fc-event-reunion")
          }
        }

      });



      calendar.render();

      // Jours de la semaine en francais
      document.querySelector(".fc-day-header.fc-widget-header.fc-sun").innerHTML="<span>Dimanche</span>";
      document.querySelector(".fc-day-header.fc-widget-header.fc-mon").innerHTML="<span>Lundi</span>"
      document.querySelector(".fc-day-header.fc-widget-header.fc-tue").innerHTML="<span>Mardi</span>"
      document.querySelector(".fc-day-header.fc-widget-header.fc-wed").innerHTML="<span>Mercredi</span>"
      document.querySelector(".fc-day-header.fc-widget-header.fc-thu").innerHTML="<span>Jeudi</span>"
      document.querySelector(".fc-day-header.fc-widget-header.fc-fri").innerHTML="<span>Vendredi</span>"
      document.querySelector(".fc-day-header.fc-widget-header.fc-sat").innerHTML="<span>Samedi</span>"

      /// CREER UN NOUVEL EVENEMENT ////
      const dates = document.querySelectorAll(".fc-future");
      const eventLink = document.getElementById('new-event-button');

      dates.forEach((day) => {
        day.addEventListener("click", (event) => {
          const selectedDay = Number.parseInt(day.dataset.date.slice(-2),10);
          const selectedDateMonth = Number.parseInt(day.dataset.date.slice(-5,-3),10);
          $('#toggleEventModal').modal('show');
          console.log(document.querySelectorAll(".start_date"));
          document.querySelectorAll(".start_date").forEach((start) => {
            console.log(start);
            start.innerHTML = selectedDay + " " + monthLetters[selectedDateMonth];
            console.log(start);
          });

          // Set start date to selected
          const options_start_day = document.querySelectorAll("#event_start_time_3i > option");

          options_start_day.forEach((option) => {
            const dayToSelect = Number.parseInt(option.value,10);
            if (selectedDay === dayToSelect) {
              option.selected = true
            } else {
                option.selected = false
            }
          });
            // Set end date to selected
          const options_end_day = document.querySelectorAll("#event_end_time_3i > option");

          options_end_day.forEach((option) => {
            const dayToSelect = Number.parseInt(option.value,10);
            if (selectedDay === dayToSelect) {
              option.selected = true
            } else {
                option.selected = false
            }
          });

          const selectedMonth = Number.parseInt(day.dataset.date.slice(-5,-3),10);

          // Set start month to selected
          const options_start_month = document.querySelectorAll("#event_start_time_2i > option");

          options_start_month.forEach((option) => {
            const monthToSelect = Number.parseInt(option.value,10);
            if (selectedMonth === monthToSelect) {
              option.selected = true
            } else {
                option.selected = false
            }
          });

          // Set end month to selected
          const options_end_month = document.querySelectorAll("#event_end_time_2i > option");

          options_end_month.forEach((option) => {
            const monthToSelect = Number.parseInt(option.value,10);
            if (selectedMonth === monthToSelect) {
              option.selected = true
            } else {
                option.selected = false
            }
          });

          const selectedYear = Number.parseInt(day.dataset.date.slice(-10,-6),10);

          // Set start year to selected
          const options_start_year = document.querySelectorAll("#event_start_time_1i > option");

          options_start_year.forEach((option) => {
            const yearToSelect = Number.parseInt(option.value,10);
            if (selectedYear === yearToSelect) {
              option.selected = true
            } else {
                option.selected = false
            }
          });

          // Set end month to selected
          const options_end_year = document.querySelectorAll("#event_end_time_1i > option");

          options_end_year.forEach((option) => {
            const yearToSelect = Number.parseInt(option.value,10);
            if (selectedYear === yearToSelect) {
              option.selected = true
            } else {
                option.selected = false
            }
          });
          // eventLink.click();
        });
      });
    });
  }
}

// const onClickDescription = () => {
//   const meetings = document.querySelectorAll(".fc-content");

//   meetings.forEach((meeting) => {
//     meeting.addEventListener("click", (event) => {
//       event.preventDefault();
//       console.log("hello!!")
//     });
//   });
// }

export default calendarInit;
// export default onClickDescription;
