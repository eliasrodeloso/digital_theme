/**
 * 
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade to newer
 * versions in the future. If you wish to customize please contact me 
 * trough mail at eliasrodeloso@gmail.com
 *
 * @author    Elias Rodelo <eliasrodeloso@gmail.com>
 * @copyright 2017 Elias Rodelo
 */

import $ from 'jquery';
import tether from 'expose-loader?Tether!tether';
import 'bootstrap';

import './components/dropdowns';
import './components/slider';

import prestashop from 'prestashop';
import EventEmitter from 'events';

for (var i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}



