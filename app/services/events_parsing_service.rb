module EventsParsingService
  class << self
    def parse_events(project)
      project.events.map do |event|
        {
          id: "event_#{event.id}",
          title: event.name,
          start: event.start_time,
          end: event.end_time,
          extendedProps: {
            description: event.description.blank? ? "#{event.start_time.strftime('%Hh%M')} - #{event.end_time.strftime('%Hh%M')}" : event.description
          }
        }
      end
    end
  end
end
