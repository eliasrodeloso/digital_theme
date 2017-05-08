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

import $ from 'expose-loader?$!expose-loader?jQuery!jquery';
import 'expose-loader?Tether!tether';
import 'bootstrap';
import 'owl.carousel';
import '../vendor/fancybox/dist/jquery.fancybox';
import 'bootstrap-touchspin';

import './components/dropdowns';
import './components/slider';
import './components/newsletter';
import './components/owl';
import './components/block-cart';
import './components/gallery';
import './components/touchspin';
import './components/menu';

import prestashop from 'prestashop';
import EventEmitter from 'events';

for (var i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}



