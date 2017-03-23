
import $ from 'jquery';

export default class PopOver{
	constructor(po){
		this.po = po;
	}
	
	init(){
		this.po.alert(function(){
			alert("It is workiing!")
		});
	}
}
