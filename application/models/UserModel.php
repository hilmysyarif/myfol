<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model {

	public function __construct(){}

	public function getAllUsers($str, $id = FALSE){

		if ($id === FALSE){
			$query = $this->db->get('tbl_user');
			return $query->result_array();
		}else{
			$query = $this->db->get_where('tbl_user', array('user_id' => $id));
			return $query->row_array();	
		}
	}

	public function getAllCourses($str, $id = FALSE){

		if ($id === FALSE){
			$query = $this->db->get('tbl_courses');
			return $query->result_array();
		}else{
			$query = $this->db->get_where('tbl_courses', array('courses_id' => $id));
			return $query->row_array();	
		}
	}

	public function getAllProgramCourses($str, $id = FALSE){

		if ($id === FALSE){
			$query = $this->db->get('tbl_programcourselink');
			return $query->result_array();
		}else{
			$query = $this->db->get_where('tbl_programcourselink', array('programcourselink_id' => $id));
			return $query->row_array();
		}
	}

	public function getAllGrades($str, $id = FALSE){

		if ($id === FALSE){
			$query = $this->db->get('tbl_grades');
			return $query->result_array();
		}else{
			$query = $this->db->get_where('tbl_grades', array('grades_id' => $id));
			return $query->row_array();	
		}
	}

	//Login Authenticate

	public function authenticateUser($str){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$query = $this->db->get_where('tbl_user', array('user_username' => $username, 'user_password' => $password));
		if($query->num_rows() > 0) {
			return $query->row_array();
		}else{
			return false;
		}

	}

	public function getAllTutorials($str, $id = FALSE){

		if ($id === FALSE){
			$query = $this->db->get('tbl_tutorials');
			return $query->result_array();
		}else{
			$query = $this->db->get_where('tbl_tutorials', array('tutorials_id' => $id));
			return $query->row_array();
		}
	}

	public function newStudentProfile(){
		$data = array(
			'profile_id' => NULL,
			'profile_image' => $this->input->post('pimage'),
			'profile_hometown' => $this->input->post('hometown'),
			'profile_facebook' => $this->input->post('facebook'),
			'profile_twitter' => $this->input->post('twitter'),
			'profile_linkedin' => $this->input->post('linkedin'),
			'profile_email' => $this->input->post('email'),
			'profile_hobbies' => $this->input->post('hobbies'),
			'profile_books' => $this->input->post('books'),
			'profile_website' => $this->input->post('website'),
			'profile_learnexper' => $this->input->post('learnexper'),
			'profile_address' => $this->input->post('address'),
			'profile_city' => $this->input->post('city'),
			'profile_province' => $this->input->post('province'),
			'profile_country' => $this->input->post('country'),
			'profile_highschool' => $this->input->post('highschool'),
			'profile_employers' => $this->input->post('employers'),
			'profile_position' => $this->input->post('position'),
			'profile_university' => $this->input->post('university'),
			'profile_tagline' => $this->input->post('tagline'),
			'profile_music' => $this->input->post('music'),
			'profile_tvshows' => $this->input->post('tvshows'),
			'profile_movies' => $this->input->post('movies'),
			'profile_quotes' => $this->input->post('quotes'),
			'profile_goals' => $this->input->post('goals')
		);

		$this->db->where('profile_id', $this->session->userdata('id'));
		return $this->db->insert('tbl_profile', $data);
	}



}
