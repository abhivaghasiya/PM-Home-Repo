
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.min
//= require jquery_ujs
//= require jquery-ui.min
//= require popper.min
//= require moment
//= require Chart.min
//= require select2.full.min
//= require jquery.barrating.min
//= require ckeditor
//= require validator.min
//= require daterangepicker
//= require ion.rangeSlider.min
//= require dropzone
//= require mindmup-editabletable
//= require jquery.dataTables.min
//= require dataTables.bootstrap.min
//= require fullcalendar.min
//= require perfect-scrollbar.jquery.min
//= require tether.min
//= require slick.min
//= require util
//= require alert
//= require button
//= require carousel
//= require collapse
//= require dropdown
//= require modal
//= require tab
//= require tooltip
//= require popover
//= require demo_customizer
//= require main.js

document.addEventListener('turbolinks:load', () => {
  $('#project_description').froalaEditor();
});
