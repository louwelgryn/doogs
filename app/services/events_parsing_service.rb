module EventsParsingService
  class << self
    def parse_events(events)
      events.map do |event|
        {
          id: "event_#{event.id}",
          title: event.name,
          start: event.start_time,
          end: event.end_time,
          extendedProps: {
            description: event.description.blank? ? "#{event.start_time.strftime('%Hh%M')} - #{event.end_time.strftime('%Hh%M')}" : event.description,
            status: event.status.blank? ? "perso" : event.status,
            start_time: event.start_time.blank? ? 8 : event.start_time,
            end_time: event.end_time.blank? ? 9 : event.end_time
          }
        }
      end
    end
  end
end
