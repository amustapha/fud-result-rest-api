<?php

/**
 * Created by PhpStorm.
 * User: m_bryo
 * Date: 2/8/17
 * Time: 11:12 PM
 */
use Modular\Page;
class IndexPage extends Page
{
    private $result;
    function __construct()
    {
        $this->result = new Result();
    }

    function myResultsAction(){
        $student_info = json_decode(file_get_contents("php://input"), true);
        return array("results"=>$this->result->listAvailableResults($student_info));
    }

    function showResultAction($id){
        return array("summary"=>$this->result->showResultDetails($id));
    }

    function generateStudentsAction($count){
        $this->result->generateStudents($count);
    }

    function generateResultsAction($count){
        $this->result->generateResults();
    }

    function testAction(){
        return $this->result->askQuestion();
    }

    function streamAction(){

    }

}