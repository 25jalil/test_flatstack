var calendar;
calendar = function (){
  $(function () {
    $('#calendar').fullCalendar({
      buttonText: {
        today: "Сегодня"
      },
      monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
      dayNamesShort: ["ВС","ПН","ВТ","СР","ЧТ","ПТ","СБ"],
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      events: '/events.json',
      eventClick: function(event, element) {
        event.title = "CLICKED!";
          $('#calendar').fullCalendar('updateEvent', event);
      }
    });
  });
};

$(document).on('turbolinks:load', calendar);
