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
		$data['name']=$result->row()->name;
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

	
	public function login_validation(){

		$this->load->library('form_validation');

		$this->form_validation->set_rules('email','Email','
			required|trim|xss_clean|callback_validate_credientials');
		//'email' is the input form name, while 'Email' is the name when the web gives
		//feedback on login information
		$this->form_validation->set_rules('password','Password','required|md5|trim');
 
		if ($this->form_validation->run()){
			//if the username/password pass the validation test
			
			// load the model
			$this->load->model('model_users');
			
			// get the username from the form
			
			$data=array(
				'username'=>$this->input->post('email'),
				'is_logged_in'=>1
				);			
			$this->session->set_userdata($data);
			//session is constructed with the input form name 'email'

			//redirect ('index.php/welcome');
			//redirect ('index.php/home');
			$this->load->view('home_view');
		} else{
			
			$this->index();
			//if the validation test failed, redirect to the 'restricted page'
		}

	}
	
	


	
}
	


