<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct(){
		
  	header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
    $method = $_SERVER['REQUEST_METHOD'];
    if($method == "OPTIONS") {
        die();
    }

		parent::__construct();

		$this->load->model('UserModel');
	}

	public function login($str=NULL){
		//will show the login page for users
		//$ = json_decode(file_get_contents('php://input'), TRUE);
		//$this->UserModel->authenticateUser($data);
		//echo $this->input->post('username');
		//$this->UserModel->authenticateUser();
		//$login = $this->UserModel->authenticateUser();
		//$greeting= json_encode($login);
		//echo $greeting;
		//$info = json_decode(username);
		
		if($this->input->post('login')){

			if($this->UserModel->authenticateUser($data)){

				$data['authuser'] = $this->UserModel->authenticateUser();

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

		}else{
		//loading login page
		$loadlogin = $this->UserModel->authenticateUser($str);
		$wronglogin= json_encode($loadlogin);
		echo $wronglogin;
		}
		
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

	public function allCalendar($str=NULL){
		$calendarlist = $this->UserModel->getAllCalendar($str);
		$calendarnames= json_encode($calendarlist);
		echo $calendarnames;
	}

	public function oneCalendar($str=NULL, $id){
		$calendarlist = $this->UserModel->getAllCalendar($str, $id);
		$calendarnames= json_encode($calendarlist);
		echo $calendarnames;
	}

	public function allNews($str=NULL){
		$newslist = $this->UserModel->getAllNews($str);
		$newsnames= json_encode($newslist);
		echo $newsnames;
	}

	public function oneNews($str=NULL, $id){
		$newslist = $this->UserModel->getAllNews($str, $id);
		$newsnames= json_encode($newslist);
		echo $newsnames;
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
