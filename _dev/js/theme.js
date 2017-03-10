/**
 * This is the entry point for specific javascript of theme
 */

require('tether');
require('bootstrap');
require('bootstrap-touchspin')

import PopOver from 'components/popover'

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
  
  $('[data-toggle="popover"]').popover()
})
