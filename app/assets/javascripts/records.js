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
});
