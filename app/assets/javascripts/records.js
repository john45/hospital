$(document).on('turbolinks:load', function() {
    $( "#selectable" ).selectable({
      stop: function() {
        // var specId = this.data(specid);
        var spec = $('.ui-selected').attr('data-specid');

        $.ajax({
          url: "/records/get_doctors",
          data: { specialization: spec},
          dataType: 'script'
        });

        $('#doctors').empty();
        var result = $( "#select-result-spec-category" ).empty();
        $( ".ui-selected", this ).each(function() {
          var index = $( "#selectable li" ).index( this );
          result.append( " #" + ( index + 1 ) );
        });
      }
    });

    $("tr").selectable({
      stop: function(){
        if ($('.doctor.ui-selected').length){
          var choive_date = $(this).find('.current-month.ui-selected').text().trim();
          var doctor_id = $('.doctor.ui-selected').attr('data-doctorid');
          $.ajax({
            url: "/records/show_doctor_event",
            data: { choice_date: choive_date, doctor_id: doctor_id},
            dataType: 'script'
          });
        }
      }
    });

});
