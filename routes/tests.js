// Generated by CoffeeScript 1.9.1
(function() {
  var express, router;

  express = require('express');

  router = express.Router();


  /* GET tests listing. */

  router.get('/tests', function(req, res, next) {
    res.render('indexT', {
      title: 'Express'
    });
  });

  module.exports = {
    indexT: function(req, res) {
      return res.render('indexT', {
        title: 'Tests'
      });
    }
  };

}).call(this);
