<?php
class Templates extends MX_Controller 
{

function __construct() {
parent::__construct();
}
function _draw_breadcrumbs($data){
	//Note: for this to work, data must contain;
	//template, current_page_title,breadcrumbs_array
	$this->load->view('breadcrumbs_public_bootstrap',$data);
}
function test(){
    $data="";
    $this->public_jqm($data);
}
function login($data){
	if(!isset($data['view_module'])){
		$data['view_module']=$this->uri->segment(1);
	}

    $this->load->view('login_page',$data);
}
function public_bootstrap($data){
	if(!isset($data['view_module'])){
		$data['view_module']=$this->uri->segment(1);
	}

    $this->load->view('public_bootstrap',$data);
}
function public_jqm($data){
    $this->load->view('public_jqm',$data);
}
function admin($data){
	if(!isset($data['view_module'])){
		$data['view_module']=$this->uri->segment(1);
	}
    $this->load->view('admin',$data);
}


}