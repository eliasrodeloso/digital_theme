/**
 * This is the entry point for specific javascript of theme
 */

import $ from 'jquery';
import tether from 'expose?Tether!tether';
import 'bootstrap';

import './components/dropdowns';

import prestashop from 'prestashop';
import EventEmitter from 'events';

for (var i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}
