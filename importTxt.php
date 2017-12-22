<?php
class ImportTxt extends CI_Controller
{
    public function __construct()
	{
		parent::__construct();
	}
	public function index()
	{
		$this ->load -> database();
		$this->ImportTxt();
	}
	public function ImportTxt()
	{
		$this -> load -> model('import_Txt_Modele');
		$this->load ->view('Base_HTML/Header');
		$this->load ->view('Import_Txt/FormulaireImportTxt');
	}
}
?>