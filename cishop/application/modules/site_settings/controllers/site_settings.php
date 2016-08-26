<?php
class Site_settings extends MX_Controller 
{

function __construct() {
parent::__construct();
}

function _get_cookie_name(){

    $cookie_name='htelbdsgdfgrhz';
    return $cookie_name;
}
function _get_currency_symbol(){
	$symbol="$";
	return $symbol;

}
function _get_item_segments(){
    //return the segments for the store_item pages (produce pages)
    $segments="musical/instrument/";
    return $segments;
}

function _get_items_segments(){
    // return the segment for the categories pages
    $segments="music/instruments/";
    return $segments;
}
function _get_page_not_found_msg(){

	$msg="<h1>It is a webpage Jim But not as we know it!</h1>";
	$msg.="<p>Please check your vibe and try again.</p>";
	return $msg;
}
}