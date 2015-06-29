<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

#Main controller for sign up and login page

class Main extends CI_Controller {
	
	public function index() {
		//index page; allow user to do the query
		$this->load->view('search');

	}

	public function query(){
		$this->load->model('query_language');
		if ($this->query_language->query_all()===0){
			echo "<br/><br/><br/><p>No results found</p>";
			$this->load->view('search');
		}else{
			//echo "</br><br/><br/>found some data !";
	
			$result=$this->query_language->query_all();
			$data['result']=$result;
			
			$this->load->view('result',$data);
		}
	}

	public function id($id){
		$this->load->model('query_language');
		$result=$this->query_language->query_byid($id);
		$data['title']=$result->row()->title;
		$data['name']=$result->row()->name;
		$data['dtrigger']=$result->row()->dtrigger;
		$data['itrigger']=$result->row()->itrigger;
		$data['ptrigger']=$result->row()->ptrigger;
		$data['type']=$result->row()->type;
		$data['examples']=$result->row()->examples;
		$data['source']=$result->row()->source;
		$data['description']=$result->row()->description;
		$data['derivational']=$result->row()->derivational;
		$data['inflectional']=$result->row()->inflectional;
		$data['prefixes']=$result->row()->prefixes;
		$data['infixes']=$result->row()->infixes;
		$data['variation']=$result->row()->variation;
		$data['frequency']=$result->row()->frequency;
		$data['extent']=$result->row()->extent;
		$this->load->view('entry',$data);

	}

	public function reference(){
		$this->load->view("reference");
	}
	
}
	


