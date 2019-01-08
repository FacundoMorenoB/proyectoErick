<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function login($usuario,$password){
		$this->db->where('codigo_Usuario',$usuario);
		$this->db->where('password_Usuario',$password);
		$q = $this->db->get('usuario');
		if ($q->num_rows()>0) {
			return true;
		}
		else {
			return false;
		}
	}

	public function get_roll($usuario){
		$this->db->where('codigo_Usuario',$usuario);
		$r = $this->db->query('select Rol_id_Rol from usuario');
		echo $r;
	}

}

/* End of file login_model.php */
/* Location: ./application/models/login_model.php */