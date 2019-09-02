import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';

// import '@fullcalendar/core/main.css';
// import '@fullcalendar/daygrid/main.css';

const calendarInit = () => {

  const calendarEl = document.getElementById('calendar');


  if (calendarEl) {
    document.addEventListener('DOMContentLoaded', function() {
      var calendar = new Calendar(calendarEl, {
        fixedWeekCount: false,
        plugins: [ dayGridPlugin, interactionPlugin, timeGridPlugin ],
        themeSystem: 'bootstrap', height: 800, width: 400,
        events: gon.events,

        eventClick: function(info) {
          $('#calendarModal').modal('show');
          const eventName = document.getElementById('event-title');
          eventName.innerHTML = info.event.title;

          const eventDescription = document.getElementById('event-description');
          eventDescription.innerHTML = info.event.extendedProps.description;

          const eventStartTime = document.getElementById('event-start-date');
          eventStartTime.innerHTML = info.event.extendedProps.start_time;
        }
      });

      calendar.render();


      /// AVOIR LA DESCRIPTION D UN EVENEMENT ///
      // const existingEvents = document.querySelectorAll(".fc-event-container")
      // existingEvents.forEach((existingEvent) => {
      //   existingEvent.addEventListener("click", (event) => {
      //     console.log('lala');
      //     alert('hello');
      //   });
      // });

      // events.forEach((existing) => {
      //   existing.addEventListener("click", (event) => {
      //     console.log('victoire!');
      //   })
      // })


      /// CREER UN NOUVEL EVENEMENT ////
      const dates = document.querySelectorAll(".fc-future");
      const eventLink = document.getElementById('new-event-button');

      dates.forEach((day) => {
        day.addEventListener("click", (event) => {
          const selectedDay = Number.parseInt(day.dataset.date.slice(-2),10);
          $('#eventModal').modal('show');
          document.getElementById("start_date").innerHTML = day.dataset.date;

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
