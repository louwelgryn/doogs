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
        plugins: [ dayGridPlugin, interactionPlugin, timeGridPlugin ],
        themeSystem: 'bootstrap', height: 800, width: 400,
        events: gon.events
      });

      calendar.render();


      /// ON CLICK DESCRIPTION ////
      const dates = document.querySelectorAll(".fc-future");
      // console.log(dates);
      // const datesFuture = dates.querySelectorAll(".fc-future");
      // console.log(datesFuture);
      const eventLink = document.getElementById('new-event-button');

      dates.forEach((day) => {
        day.addEventListener("click", (event) => {
          console.log(day.dataset.date);
          $('#eventModal').modal('show');
          document.getElementById("start_date").innerHTML = day.dataset.date;
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
