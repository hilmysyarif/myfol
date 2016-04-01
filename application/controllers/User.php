<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct($config = 'rest'){
		
		header('Access-Control-Allow-Origin: *');
    	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");

		parent::__construct();

		$this->load->model('UserModel');
	}

	public function login($str){
		//will show the login page for users
		//$data = json_decode(file_get_contents('php://input'), TRUE);
		//$this->UserModel->authenticateUser($data);
		//echo $this->input->post('username');
		//$this->UserModel->authenticateUser();
		//$login = $this->UserModel->authenticateUser();
		//$greeting= json_encode($login);
		//echo $greeting;
		//$info = json_decode(username);
		
		if($this->input->post('login')){

			if($this->UserModel->authenticateUser()){

				$data['authuser'] = $this->UserModel->authenticateUser();
				/*$newdata = array(
					'username' => $data['authuser']['user_username'],
					'email' => $data['authuser']['user_email'],
					'studentnumber' => $data['authuser']['user_studentnum'],
					'role' => $data['authuser']['user_role'],
					'id' => $data['authuser']['user_id'],
					'loggedin' => TRUE
				);

				$this->session->set_userdata($newdata);

				$id = $this->session->userdata('id');
				$username = $this->session->userdata('username');
				$email = $this->session->userdata('email');
				$studentnumber = $this->session->userdata('studentnumber');
				$role = $this->session->userdata('role');

				$data['userInfo'] = $this->UsersModel->getUserInfo($id);*/

				//when login works, it goes to the myfol main home 
				$login = $this->UserModel->authenticateUser($str);
				$greeting= json_encode($login);
				echo $greeting;

			}else{
				//when login does not work
				$loadlogin = $this->UserModel->authenticateUser($str);
				$wronglogin= json_encode($loadlogin);
				echo $wronglogin;
			}

			/*}else{
				//loading login page
				$loadlogin = $this->UserModel->authenticateUser($str);
				$wronglogin= json_encode($loadlogin);
				echo $wronglogin;
			}*/
		
	}
	

	public function newStudent($str=NULL){

	$this->form_validation->set_rules('pimage', 'Profile Image');
	$this->form_validation->set_rules('hometown', 'Hometown');
	$this->form_validation->set_rules('facebook', 'Facebook');
	$this->form_validation->set_rules('twitter', 'Twitter');
	$this->form_validation->set_rules('linkedin', 'LinkedIn');
	$this->form_validation->set_rules('email', 'Email');
	$this->form_validation->set_rules('hobbies', 'Hobbies');
	$this->form_validation->set_rules('books', 'Books');
	$this->form_validation->set_rules('website', 'Website');
	$this->form_validation->set_rules('learnexper', 'Learn Experience');
	$this->form_validation->set_rules('address', 'Address');
	$this->form_validation->set_rules('city', 'City');
	$this->form_validation->set_rules('province', 'Province');
	$this->form_validation->set_rules('country', 'Country');
	$this->form_validation->set_rules('highschool', 'High School');
	$this->form_validation->set_rules('employers', 'Employers');
	$this->form_validation->set_rules('position', 'Position');
	$this->form_validation->set_rules('university', 'University');
	$this->form_validation->set_rules('tagline', 'Tagline');
	$this->form_validation->set_rules('music', 'Music');
	$this->form_validation->set_rules('tvshows', 'Tv Shows');
	$this->form_validation->set_rules('movies', 'Movies');
	$this->form_validation->set_rules('quotes', 'Quotes');
	$this->form_validation->set_rules('goals', 'Goals');

		if($this->input->post('upload')){
			$this->UserModel->newStudentProfile();
		}

	}

	public function tutorials($str=NULL){
		$tutoriallist = $this->UserModel->getAllTutorials($str);
		$tutorialnames= json_encode($tutoriallist);
		echo $tutorialnames;
	}

	public function tutorial($str=NULL, $id){
		$tutoriallist = $this->UserModel->getAllTutorials($str, $id);
		$tutorialnames= json_encode($tutoriallist);
		echo $tutorialnames;
	}

	public function returningStudent(){
		//load up the main home screen
		//json out information
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect('User/');
	}

	public function courses($str=NULL){
		$courseslist = $this->UserModel->getAllCourses($str);
		$coursesnames= json_encode($courseslist);
		echo $coursesnames;
	}

	public function course($str=NULL, $id){
		$onecourse = $this->UserModel->getAllCourses($str,$id);
		$course= json_encode($onecourse);
		echo $course;
	}

	public function allProgramCourses($str=NULL){
		$allprogramcourseslist = $this->UserModel->getAllProgramCourses($str);
		$programcoursenames= json_encode($allprogramcourseslist);
		echo $programcoursenames;
	}

	public function oneProgramCourses($str=NULL, $id){
		$oneprogramcourselist = $this->UserModel->getAllProgramCourses($str, $id);
		$onecoursename= json_encode($oneprogramcourselist);
		echo $onecoursename;
	}

	public function allGrades($str=NULL){
		$gradeslist = $this->UserModel->getAllGrades($str);
		$gradesnames= json_encode($gradeslist);
		echo $gradesnames;
	}

	public function oneGrade($str=NULL, $id){
		$gradelist = $this->UserModel->getAllGrades($str, $id);
		$gradenames= json_encode($gradelist);
		echo $gradenames;
	}

	public function users($str=NULL){
		$userlist = $this->UserModel->getAllUsers($str);
		$flnames= json_encode($userlist);
		echo $flnames;
	}

	public function user($str=NULL, $id){
		$oneuser = $this->UserModel->getAllUsers($str,$id);
		$user= json_encode($oneuser);
		echo $user;
	}

}
