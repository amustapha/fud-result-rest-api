<?php

namespace Modular;
class Model
{
    protected $database;
    function __construct()
    {

        $this->database = new \mysqli("localhost", "root", "encryption", "result");
        $this->database->autocommit(false);
        $this->database->begin_transaction();
    }


    function finish(){
        $this->database->commit();
    }

 }