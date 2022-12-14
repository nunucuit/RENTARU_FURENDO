// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import FlatpickrController from "./flatpickr_controller"
application.register("flatpickr", FlatpickrController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)


new Typed('#typed',{
  strings : ['lonely ?','alone :(','like .. damn 😔'],
  typeSpeed : 40,
  delaySpeed : 90,
  loop : true
});
