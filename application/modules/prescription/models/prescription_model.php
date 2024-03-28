<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Prescription_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertPrescription($data) {
        $data1 = array('hospital_id' => $this->session->userdata('hospital_id'));
        $data2 = array_merge($data, $data1);
        $this->db->insert('prescription', $data2);
    }

    function getPrescription() {
        $this->db->where('hospital_id', $this->session->userdata('hospital_id'));
        $this->db->order_by('id', 'desc');
        $query = $this->db->get('prescription');
        return $query->result();
    }


    function getPrescriptionByLimitBySearch($limit, $start, $search, $orderBy = null, $orderDirection = 'asc') {
        $this->db->limit($limit, $start);
        $this->db->select('*') // Include columns from the view
            ->from('prescription_medicine_view');
    
        // Searching
        if (!empty($search)) {
            $this->db->like('id', $search); // Search in prescription ID
            $this->db->or_like('patient_name', $search); // Search in patient name
            $this->db->or_like('doctor_name', $search); // Search in doctor name
            $this->db->or_like('converted_date', $search);
            $this->db->or_like('patient_id', $search);
            $this->db->or_like('name', $search); // Search in medicine name 
        }
    
        // Sorting
        if ($orderBy !== null) {
            $this->db->order_by($orderBy, $orderDirection);
        }
    
        $query = $this->db->get();
        return $query->result();
    }
    
    

    function getPrescriptionByLimit($limit, $start, $orderBy = null, $orderDirection = 'asc') {
        $this->db->limit($limit, $start);
        $this->db->select('*') // Include columns from the view
            ->from('prescription_medicine_view');
    
        // Sorting
        if ($orderBy !== null) {
            $this->db->order_by($orderBy, $orderDirection);
        }
    
        $query = $this->db->get();
        return $query->result();
    }
    
    

    function getPrescriptionBySearch($search, $orderBy = null, $orderDirection = 'asc') {
        $this->db->select('*') // Include columns from the view
            ->from('prescription_medicine_view');
    
        // Searching
        if (!empty($search)) {
            $this->db->like('id', $search); // Search in prescription ID
            $this->db->or_like('patient_name', $search); // Search in patient name
            $this->db->or_like('doctor_name', $search); // Search in doctor name
            $this->db->or_like('converted_date', $search);
            $this->db->or_like('patient_id', $search);
            $this->db->or_like('name', $search); // Search in medicine name 
        }
    
        // Sorting
        if ($orderBy !== null) {
            $this->db->order_by($orderBy, $orderDirection);
        }
    
        $query = $this->db->get();
        return $query->result();
    }
    

    
    
    


    function getAllPrescriptions($orderBy = null, $orderDirection = 'asc') {
        $this->db->select('*') // Include columns from the view
            ->from('prescription_medicine_view');
        
        // Sorting
        if ($orderBy !== null) {
            $this->db->order_by($orderBy, $orderDirection);
        }
        
        $query = $this->db->get();
        return $query->result();
    }
    
    




 


    function getPrescriptionById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('prescription');
        return $query->row();
    }

    function getPrescriptionByPatientId($patient_id) {
        $this->db->order_by('id', 'desc');
        $this->db->where('patient', $patient_id);
        $query = $this->db->get('prescription');
        return $query->result();
    }

    function getPrescriptionByDoctorId($doctor_id) {
        $this->db->order_by('id', 'desc');
        $this->db->limit(25); 
        $this->db->where('doctor', $doctor_id);
        $query = $this->db->get('prescription');
        return $query->result();
    }

    function updatePrescription($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('prescription', $data);
    }

    function deletePrescription($id) {
        $this->db->where('id', $id);
        $this->db->delete('prescription');
    }

}
