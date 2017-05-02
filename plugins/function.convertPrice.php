<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.convertPrice.php
 * Type:     function
 * Name:     convertPrice
 * Purpose:  Converts the price to price with thousands
 * -------------------------------------------------------------
 */

function smarty_function_convertPrice($params, Smarty_Internal_Template $template){

		if (empty($params['price'])) {
				trigger_error("assign: missing 'price' parameter");
				return;
		}else{
			$fmt = new NumberFormatter('es-CO', NumberFormatter::CURRENCY);
			return $fmt->formatCurrency($params['price'], "COP");
		}
}


?>