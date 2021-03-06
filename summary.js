import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';

const calendarInit = () => {
  console.log('Calendar');

  const calendarEl = document.getElementById('calendar');

  if (calendarEl) {
    document.addEventListener('DOMContentLoaded', function() {
      var calendar = new Calendar(calendarEl, {
        plugins: [ dayGridPlugin, interactionPlugin, timeGridPlugin ],
        themeSystem: 'bootstrap', height: 800, width: 400
      });

      calendar.render();
    });
  }


}

export default calendarInit;
