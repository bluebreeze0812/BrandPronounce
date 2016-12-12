<?php
class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('brandpronounce', 'main_model');
	}
	
	public function index()
	{	
#		$this->output->cache(60);
		$data['title'] = 'BrandPronounce';
		$this->load->view('header', $data);
		
		$categories['category'] = $this->main_model->getCategories();
		$categories['country'] = $this->main_model->getNations();
		$this->load->view('main_page.php', $categories);
	}
	
	public function load_home()
	{
		$data['my_url'] = urlencode(base_url());
		$view = $this->load->view('home_page', $data, TRUE);
		echo $view;
	}
	
	public function feel_lucky()
	{
		$count = $this->main_model->getCounts();
		$id = rand(1, $count);
		$this->load_brand($id);
	}
	
	public function load_category($param = '', $param2 = '')
	{
		if ($param === 'cat')
		{
			$data['names'] = $this->main_model->returnCat($param2);
			$view = $this->load->view('category_page', $data, TRUE);
			echo $view;
		}
		elseif ($param === 'cou')
		{
			$data['names'] = $this->main_model->returnCou($param2);
			$view = $this->load->view('category_page', $data, TRUE);
			echo $view;
		}
	}
	
	public function load_brand($param = '')
	{
		$data['specific'] = $this->main_model->returnSpecific($param);
		$view = $this->load->view('brand_page', $data, TRUE);
		echo $view;
	}
	
	public function load_search($param = '')
	{
		$arr = $this->main_model->searchResponse($param);
		if (count($arr) === 0)
		{
			$view = $this->load->view('nothing_find', '', TRUE);
			echo $view;
		}
		elseif (count($arr) === 1)
		{
			$data['specific'] = $arr[0];
			$view = $this->load->view('brand_page', $data, TRUE);
			echo $view;
		}
		else
		{
			$data['brands'] = $arr;
			$view = $this->load->view('search_page', $data, TRUE);
			echo $view;
		}
	}

}
