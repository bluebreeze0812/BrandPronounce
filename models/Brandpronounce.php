<?php
class Brandpronounce extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	
	public function getCounts()
	{
		return $this->db->count_all('brand');
	}
	
	public function getCategories()
	{
		$sql = 'SELECT DISTINCT category FROM brand;';
		$query = $this->db->query($sql);
		foreach ($query->result_array() as $row)
		{
			$result[] = $row['category'];
		}
		$query->free_result();
		return $result;
	}
	
	public function getNations()
	{
		$sql = 'SELECT DISTINCT nation FROM brand;';
		$query = $this->db->query($sql);
		foreach ($query->result_array() as $row)
		{
			$result[] = $row['nation'];
		}
		$query->free_result();
		return $result;
	}
	
	public function returnCat($cat = '')
	{
		$cat = urldecode($cat);
		$sql = "SELECT id, name, eng_name FROM brand WHERE category = '{$cat}' AND capital = ?";
		for ($i = 65; $i < 91; $i++)
		{
			$capital = chr($i);
			$query = $this->db->query($sql, $capital);
			foreach ($query->result_array() as $row)
			{
				$result[$capital][] = $row['id'];
				$result[$capital][] = $row['name'];
				$result[$capital][] = $row['eng_name'];
			}
			$query->free_result();
		}
		return $result;
	}
	
	public function returnCou($cou = '')
	{
		$cou = urldecode($cou);
		$sql = "SELECT id, name, eng_name FROM brand WHERE nation = '{$cou}' AND capital = ?";
		for ($i = 65; $i < 91; $i++)
		{
			$capital = chr($i);
			$query = $this->db->query($sql, $capital);
			foreach ($query->result_array() as $row)
			{
				$result[$capital][] = $row['id'];
				$result[$capital][] = $row['name'];
				$result[$capital][] = $row['eng_name'];
			}
			$query->free_result();
		}
		return $result;
	}
	
	public function returnSpecific($id = '')
	{
		$id = urldecode($id);
		$query = $this->db->select()->where('id', $id)->get('brand');
		$arr = $query->row_array();
		
		$sql = "SELECT count(id) AS 'all_row' FROM brand;";
		$query2 = $this->db->query($sql);
		$all_row = $query2->row_array();
		$arr['all_row'] = $all_row['all_row'];
		
		return $arr;
	}
	
	public function searchResponse($param = '')
	{
		$param = urldecode($param);
		$param = trim($param);
		
		if (preg_match('/^\p{Han}+$/u', $param))
		{
			$query = $this->db->select()->where('name', $param)->get('brand');
			$arr = $query->result_array();
			
			if (count($arr))
			{
				$query->free_result();
				return $arr;
			}
			else
			{
				$sql = "SELECT * FROM brand WHERE MATCH(brief) AGAINST('{$param}');";
				$query = $this->db->query($sql);
				$arr = $query->result_array();
				$query->free_result();
				return $arr;
			}
		}
		elseif (preg_match('/^\p{L}+$/i', $param))
		{
			$query = $this->db->select()->where('eng_name', $param)->get('brand');
			$arr = $query->result_array();
			
			if (count($arr))
			{
				$query->free_result();
				return $arr;
			}
			else
			{
				$sql = "SELECT * FROM brand WHERE MATCH(brief) AGAINST('{$param}');";
				$query = $this->db->query($sql);
				$arr = $query->result_array();
				$query->free_result();
				return $arr;
			}
		}
		else
		{
			$sql = "SELECT * FROM brand WHERE MATCH(brief) AGAINST('{$param}');";
			$query = $this->db->query($sql);
			$arr = $query->result_array();
			return count($arr);
		}
	}

}
