<?php

/**
 * Created by PhpStorm.
 * User: m_bryo
 * Date: 2/8/17
 * Time: 11:13 PM
 */
use Modular\Model;
class Result extends Model
{






















































    function generateStudents($count = null){

        $insert = $this->database->prepare("INSERT INTO students VALUE(null, ?, ?)");
        $insert->bind_param('ss', $name, $reg);

        $names = array('Lawan', 'Sunusi', 'Alhassan', 'Faruk', 'Mustapha', 'Abdulmalik', 'Aliyu', 'Bala', 'Zakari', 'Muhammad', 'Hashim', 'Ado', 'Garba', 'Nasir', 'Abdulaziz', 'Dauda');
        for($i=0; $i<$count; $i++){
            $n = sizeof($names) - 1;
            $name = "";
            for ($j =0; $j<rand(2,3); $j++){
                $name .= $names[rand(0, $n)] . " ";
            }
            $name = trim($name);
            $reg = "FSC/CSC/13/" . str_pad($i + 1, 4, '0', STR_PAD_LEFT);
            $insert->execute();
        }

        $this->finish();
    }

    function generateResults(){
        $students_getter = $this->database->query("SELECT id FROM students");
        $students  = array();
        while ($student = $students_getter->fetch_assoc()){
            array_push($students, $student);
        }

        $courses_getter = $this->database->query("SELECT id FROM courses LIMIT 5 OFFSET 5");
        $courses  = array();
        while ($course= $courses_getter->fetch_assoc()){
            array_push($courses, $course);
        }

        $grades_getter = $this->database->query("SELECT id FROM grades");
        $grades  = array();
        while ($grade= $grades_getter->fetch_assoc()){
            array_push($grades, $grade);
        }
        $result = $this->database->prepare("INSERT INTO result VALUE(null, ?, '2013/2014', 1, 2)");
        $result_summary = $this->database->prepare("INSERT INTO result_summary VALUE(null, ?, ?, ?)");
        $result->bind_param('s', $sid);
        $result_summary->bind_param('sss', $rid, $cid, $grade);

        foreach ($students as $student){
            $sid = $student['id'];
            $result->execute();
            $rid = $result->insert_id;
            foreach ($courses as $course){
                $cid = $course['id'];
                $grade = $grades[rand(0, sizeof($grades)-1)]['id'];
                $result_summary->execute();
            }
        }

        $this->finish();



    }

    function listAvailableResults($student_data){
        $myResultsQuery = $this->database->prepare("SELECT result.id, students.name, result.session, result.level, result.semester, SUM(grades.grade_point * courses.course_weight) as tce, SUM(courses.course_weight) as tcr FROM result_summary" .
            " LEFT JOIN result ON result.id = result_summary.result_id" .
            " LEFT JOIN grades ON grades.id = result_summary.grade_id" .
            " LEFT JOIN courses ON courses.id = result_summary.course_id" .
            " RIGHT JOIN students ON students.id = result.student_id" .
            "  WHERE students.matric_number = ? AND students.password = ?" .
            " GROUP BY result_summary.result_id " .
            " ORDER BY result.level, result.semester");
        $myResultsQuery->bind_param('ss', $student_data['matric_number'], $student_data['password'] );
        $myResultsQuery->execute();
        $myResults = $myResultsQuery->get_result();
        $results = array();
        while ($result = $myResults->fetch_assoc()){
            $result['gpa'] = round($result['tce'] / $result['tcr'], 2);
            $result['semester'] = ($result['semester']==1) ? "First semester" : "Second Semester";
            $results[] =  $result;
        }
        return $results;
    }

    function showResultDetails($resultId){
        $detailsQuery = $this->database->prepare("SELECT courses.course_title, courses.course_code, grades.grade, (grades.grade_point * courses.course_weight) as grade_point, grades.remark  FROM result_summary" .
            " LEFT JOIN courses ON courses.id = result_summary.course_id" .
            " LEFT JOIN grades ON grades.id = result_summary.grade_id" .
            " WHERE result_id = ?");
        $detailsQuery->bind_param('s', $resultId);
        $detailsQuery->execute();
        $myCourses = $detailsQuery->get_result();
        $courses = array();
        while ($course = $myCourses->fetch_assoc()){
            $courses[] =  $course;
        }
        return $courses;
    }

    function askQuestion(){
        $questionSql = $this->database->query("SELECT * FROM quiz ORDER BY RAND() LIMIT 1 ");
        return $questionSql->fetch_assoc();
    }

}