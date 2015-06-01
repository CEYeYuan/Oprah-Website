<?php
class Query_language extends CI_Model{
	public function query_all(){
		$content='%'.$this->input->get('content').'%';
		$sql="select distinct * from language where name like '$content' or type like '$content' or
		examples like '$content' or source like '$content' or description like '$content' or
		derivational like '$content' or inflectional like '$content' or prefixes like '$content'
		or infixes like '$content' or variation like '$content' or frequency like '$content'
		or extent like '$content'";
		$result=$this->db->query($sql);
		if ($result->num_rows()===0)
			return 0;
		return $result;
	}
	public function query_byid($id){
		$sql="select * from language where id='$id'";
		$result=$this->db->query($sql);
		return $result;
	}
}


?>