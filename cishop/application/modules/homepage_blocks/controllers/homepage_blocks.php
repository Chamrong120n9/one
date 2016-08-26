<?php
class Homepage_blocks extends MX_Controller 
{

function __construct() {
parent::__construct();
}



function delete($update_id){
    if(!is_numeric($update_id))
    {
        redirect('site_security/not_allowed');
    }
    $this->load->library('session');
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();
    $submit=$this->input->post('submit',TRUE);
    if($submit=="Cancel"){
        redirect('homepage_blocks/create/'.$update_id);
    }elseif($submit=="Yes - Delete Offer Block"){
         $this->_process_delete($update_id);

         $flash_msg="The Homepage Block have been Delete";
        $value='<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
        $this->session->set_flashdata('item',$value);
        redirect('homepage_blocks/manage');
    }  
}
function _process_delete($update_id){
    $mysql_query = "delete from homepage_offers where block_id=$update_id";
    $query=$this->_custom_query($mysql_query);

    $this->_delete($update_id);
}


function deleteconf($update_id){

    if(!is_numeric($update_id))
    {
        redirect('site_security/not_allowed');
    }
    $this->load->library('session');
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    $data['headline']="Delete Entire Offer Block"; 
    $data['update_id']=$update_id;
    $data['flash']=$this->session->flashdata('item');      
    $data['view_file']="deleteconf";
    $this->load->module('templates');
    $this->templates->admin($data);
}

function _draw_blocks(){
    $data['query']=$this->get('priority');
    $num_rows=$data['query']->num_rows();
    if($num_rows>0){
        $this->load->view('homepage_blocks',$data);
    }
}
function view($update_id){

    if(!is_numeric($update_id))
    {
        redirect('site_security/not_allowed');
    }
    $this->load->module('site_settings');
    $this->load->module('custom_pagination');
    
    //fetch the homepage offer details
    $data = $this->fetch_data_from_db($update_id);
    //count the items that belong to this homepage offer
    $use_limit=FALSE;
    $mysql_query=$this->_generate_mysql_query( $update_id,$use_limit);
    $query=$this->_custom_query($mysql_query);
    $total_items=$query->num_rows();
    
    //fetch the items for this page
    $use_limit=TRUE;
    $mysql_query=$this->_generate_mysql_query(  $update_id,$use_limit);

    //$template,$target_base_url,$total_rows,$offset_segment,$limit
    $pagination_data['template']='public_bootstrap';
    $pagination_data['target_base_url']=$this->get_target_pagination_base_url();
    $pagination_data['total_rows']=$total_items;
    $pagination_data['offset_segment']=4;
    $pagination_data['limit']=$this->get_limit();

    $data['pagination']=$this->custom_pagination->_generate_pagination($pagination_data);
    $pagination_data['offset']=$this->get_offset();
    $data['showing_statement']=$this->custom_pagination->get_showing_statement($pagination_data);

    $data['item_segments']=$this->site_settings->_get_item_segments();
    $data['currency_symbol']=$this->site_settings->_get_currency_symbol();
    $data['query']=$this->_custom_query($mysql_query);
    $data['update_id']=$update_id;
    $data['flash']=$this->session->flashdata('item');  
    $data['view_module']="homepage_blocks";    
    $data['view_file']="view";
    $this->load->module('templates');
    $this->templates->public_bootstrap($data);
}
function get_target_pagination_base_url(){
    $first_bit=$this->uri->segment(1);
    $second_bit=$this->uri->segment(2);
    $third_bit=$this->uri->segment(3);
    $target_base_url=base_url().$first_bit."/".$second_bit."/".$third_bit;
    return $target_base_url;
}

function _generate_mysql_query( $update_id, $use_limit){
    //Note: use_limit can be true or false
    $mysql_query="
        SELECT store_items.item_title,
            store_items.item_url,
            store_items.item_price,
            store_items.small_pic,
            store_items.was_price
        FROM store_cat_assign INNER JOIN store_items ON store_cat_assign.item_id=store_items.id
        WHERE store_cat_assign.cat_id=$update_id and store_items.status=1 
    ";
        if($use_limit==TRUE){
            $limit=$this->get_limit();
            $offset=$this->get_offset();
            $mysql_query.=" limit ".$offset.", ".$limit;
        }

    return $mysql_query;
}
function get_limit(){
    $limit=10;
    return $limit;
}
function get_offset(){
    $offset=$this->uri->segment(4);
    if(!is_numeric($offset)){
        $offset=0;
    }
    return $offset;
}

/*function _get_cat_id_from_cat_url($cat_url){
    $query=$this->get_where_custom('cat_url',$cat_url);
    foreach ($query->result() as $row) {
        $cat_id=$row->id;
    }
    if(!isset($cat_id)){
        $cat_id=0;
    }
    return $cat_id;
}*/
/*function _draw_top_nav(){
    $mysql_query="select * from homepage_blocks where parent_cat_id=0 order by priority";
    $query=$this->_custom_query($mysql_query);
    foreach ($query->result() as $row) {
      $parent_Categories[$row->id]=$row->block_title;
    }
    $this->load->module('site_settings');
    $items_segments=$this->site_settings->_get_items_segments();
    $data['target_url_start']=base_url().$items_segments;
    $data['parent_Categories']=$parent_Categories;
    $this->load->view('top-nav',$data);
}

function _get_parent_block_title($update_id){
    $data=$this->fetch_data_from_db($update_id);
    $parent_cat_id=$data['parent_cat_id'];
    $parent_block_title=$this->_get_block_title($parent_cat_id);
    return $parent_block_title;
}

function _get_all_sub_cats_for_dropdown(){
    $mysql_query="select * from homepage_blocks where parent_cat_id!=0 order by parent_cat_id,block_title";
    $query=$this->_custom_query($mysql_query);
    foreach ($query->result() as $row) {
        $parent_block_title=$this->_get_block_title($row->parent_cat_id);
        $sub_Categories[$row->id]=$parent_block_title.">".$row->block_title;
    }
    if(!isset($sub_Categories)){
        $sub_Categories="";
    }
    return $sub_Categories;
}*/

function sort(){

    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();
    $number=$this->input->post('number',TRUE);
    for($i=1;$i<=$number;$i++){
        $update_id=$_POST['order'.$i];
        $data['priority']=$i;
        $this->_update($update_id,$data);
    }
}

function _draw_sortable_list(){
    //$data['query']=$this->get_where_custom('parent_cat_id',$parent_cat_id);
    $mysql_query="select * from homepage_blocks order by priority";
    $data['query']=$this->_custom_query($mysql_query);
    $this->load->view('sortable_list',$data);
}
/*function _count_sub_cats($update_id){
    $query=$this->get_where_custom('parent_cat_id',$update_id);
    $num_rows=$query->num_rows();
    return $num_rows;
}*/
function _get_block_title($update_id){
    $data=$this->fetch_data_from_db($update_id);
    $block_title=$data['block_title'];
    return $block_title;
}

/*function _get_dropdown_options($update_id){
    if(!is_numeric($update_id)){
        $update_id=0;
    }
    $options['']='Please Select...';
    //build an array of all the parent Categories
    $mysql_query="select * from homepage_blocks where parent_cat_id=0 and id!=$update_id";
    $query=$this->_custom_query($mysql_query);
    foreach ($query->result() as $row) {

        $options[$row->id]=$row->block_title;
    }
    return $options;
}*/

function fetch_data_from_post(){
    $data['block_title']=$this->input->post('block_title',TRUE);
   
   
    return $data;

}
function fetch_data_from_db($update_id){
    if(!is_numeric($update_id)){
        redirect('site_security/not_allowed');
    }
    $query=$this->get_where($update_id);
    foreach ($query->result() as $row) {
        $data['block_title']=$row->block_title;
        //$data['cat_url']=$row->cat_url;
        //$data['parent_cat_id']=$row->parent_cat_id;

    }
    if(!isset($data)){
        $data="";
    }
    return $data;

}   



//star function create
 function create(){
    $this->load->library('session');
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

     $update_id=$this->uri->segment(3);
     $submit=$this->input->post('submit',TRUE);
     if($submit=="Cancel"){
        redirect ('homepage_blocks/manage');
     }


     if($submit=="Submit"){
        $this->load->library('form_validation');
        $this->form_validation->set_rules('block_title','homepage offer Title','required');


         if($this->form_validation->run()==TRUE){
            //get the variables

            $data=$this->fetch_data_from_post();
           // $data['block_title']=url_title($data['block_title']);

            if (is_numeric($update_id)) {
                //update the item detail
                $this->_update($update_id,$data);
                
                $flash_msg="This homepage offer was successfully update.";
                $value='<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
                $this->session->set_flashdata('item',$value);
                redirect('homepage_blocks/create/'.$update_id);
            }else{
                //insert a new homepage offer

                $this->_insert($data);
                $update_id=$this->get_max(); //get the ID of the new item
                
                $flash_msg="This homepage offer was successfully Save.";
                $value='<div class="alert alert-success" role="alert">'.$flash_msg.'</div>';
                $this->session->set_flashdata('item',$value);
                redirect('homepage_blocks/create/'.$update_id);
            }

        }

         }

        
    if((is_numeric($update_id))&&($submit!="Submit")){
        $data=$this->fetch_data_from_db($update_id);

    }else{
        $data=$this->fetch_data_from_post();

    }

     if(!is_numeric($update_id)){
        $data['headline']="Create New Homepage Offer";    
    }else{
        $block_title=$this->_get_block_title($update_id);
        $data['headline']="Update ".$block_title;
    }
    //$data['options']=$this->_get_dropdown_options($update_id);
   // $data['num_dropdown_options']=count($data['options']);
    $data['update_id']=$update_id;
    $data['flash']=$this->session->flashdata('item');
   // $data['view_module']="homepage_blocks";
    $data['view_file']="create";
    $this->load->module('templates');
    $this->templates->admin($data);
    
 }
//end function create


function manage(){
    $this->load->module('site_security');
    $this->site_security->_make_sure_is_admin();

    //$data['query']=$this->get('priority');
    $data['sort_this']=TRUE;  
    $data['flash']=$this->session->flashdata('item');
    $data['view_file']="manage";
    $this->load->module('templates');
    $this->templates->admin($data);
}


function get($order_by)
{
    $this->load->model('mdl_homepage_blocks');
    $query = $this->mdl_homepage_blocks->get($order_by);
    return $query;
}

function get_with_limit($limit, $offset, $order_by) 
{
    if ((!is_numeric($limit)) || (!is_numeric($offset))) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_homepage_blocks');
    $query = $this->mdl_homepage_blocks->get_with_limit($limit, $offset, $order_by);
    return $query;
}

function get_where($id)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_homepage_blocks');
    $query = $this->mdl_homepage_blocks->get_where($id);
    return $query;
}

function get_where_custom($col, $value) 
{
    $this->load->model('mdl_homepage_blocks');
    $query = $this->mdl_homepage_blocks->get_where_custom($col, $value);
    return $query;
}

function _insert($data)
{
    $this->load->model('mdl_homepage_blocks');
    $this->mdl_homepage_blocks->_insert($data);
}

function _update($id, $data)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_homepage_blocks');
    $this->mdl_homepage_blocks->_update($id, $data);
}

function _delete($id)
{
    if (!is_numeric($id)) {
        die('Non-numeric variable!');
    }

    $this->load->model('mdl_homepage_blocks');
    $this->mdl_homepage_blocks->_delete($id);
}

function count_where($column, $value) 
{
    $this->load->model('mdl_homepage_blocks');
    $count = $this->mdl_homepage_blocks->count_where($column, $value);
    return $count;
}

function get_max() 
{
    $this->load->model('mdl_homepage_blocks');
    $max_id = $this->mdl_homepage_blocks->get_max();
    return $max_id;
}

function _custom_query($mysql_query) 
{
    $this->load->model('mdl_homepage_blocks');
    $query = $this->mdl_homepage_blocks->_custom_query($mysql_query);
    return $query;
}

}