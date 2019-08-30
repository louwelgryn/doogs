import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';

import '@fullcalendar/core/main.css';
import '@fullcalendar/daygrid/main.css';

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
    });
  }


}

export default calendarInit;
