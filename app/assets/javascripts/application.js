// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .


$(document).ready(function(){
    $( function() {
        var dateFormat = "dd/mm/yy",
        from = $( ".jq-datepicker.start-date" ).datepicker({
            defaultDate: "+1w",
            dateFormat: dateFormat,
            changeMonth: true,
            numberOfMonths: 2 
        }).on('change', function(){
            to.datepicker("option", "minDate", getDate(this));
            console.log('to changed', getDate(this))
        }),
        to = $('.jq-datepicker.end-date').datepicker({
            defaultDate: "+1w",
            dateFormat: dateFormat,
            changeMonth: true,
            numberOfMonths: 2
        }).on('change', function(){
            from.datepicker("option", "maxDate", getDate(this));
        });

        function getDate(element){
            var date;
            try {
                date = $.datepicker.parseDate( dateFormat, element.value );
            } catch (error) {
                date = null;
            }
            return date;
        }

    });


});
