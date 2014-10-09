'use strict';

/* Filters */

angular.module('myApp.filters', []).
  filter('interpolate', ['version', function(version) {
    return function(text) {
      return String(text).replace(/\%VERSION\%/mg, version);
    }
  }])
.filter('decode', function() {
    return function(text) {
      return $.parseJSON(text);
    }
  }).filter('idcode', function() {
        return function(text) {
            return text.replace(/['\[\]\"]/g,"_");
        }
    }).filter('errortip', function() {
        return function(errors) {
            console.log(errors);
            var ret = '';
            if(errors.required && errors.required.length && errors.required.length>0){
                for(var row in errors.required){
//                    ret += errors.required[row].attr("title")+"必填";
                }
            }
            return ret;
        }
    }).filter('datetime', function($filter) {
        return function(text) {
            return $filter('date')(text, 'yyyy-MM-dd hh:mm:ss.sss');
        }
    }).filter('type', function() {
        return function(text) {
            return typeof(text);
        }
    });