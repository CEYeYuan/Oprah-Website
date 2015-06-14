<?php
class Query_language extends CI_Model{
	public function query_all(){
		$content='%'.$this->input->get('content').'%';
		$sql_s="select distinct * from";
		$sql_e=" where name like '$content' or type like '$content' or
		examples like '$content' or source like '$content' or description like '$content' or
		derivational like '$content' or inflectional like '$content' or prefixes like '$content'
		or infixes like '$content' or variation like '$content' or frequency like '$content'
		or extent like '$content'";


		$type=$this->input->get('type');
		$affixes=$this->input->get('affixes');
		$count0=count($type);
		$count1=count($affixes);
		
		$sql_m="(select * from language where  1=1";
		
		for ($i=0;$i<$count0;$i++){
			if ($type[$i]!=''){
				if ($type[$i]!='Others'){
					$tmp='%'.$type[$i].'%';
					$sql_m=$sql_m." and type like '$tmp' ";
				}else{
					$tmp=" and type not like '%Native%' and type not like '%Loanwords%'";
					$sql_m=$sql_m.$tmp;
				}	
			}
		}
		
		for ($j=0;$j<$count1;$j++){
			if ($affixes[$j]!=''){
				$tmp=' and '.$affixes[$j]." not like '%no data%'";
				$sql_m=$sql_m.$tmp;
			}
		}

		$sql_m=$sql_m.") T";

		
		
		
		$result=$this->db->query($sql_s.$sql_m.$sql_e);


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