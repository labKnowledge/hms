<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Prescription extends MX_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('prescription_model');
        $this->load->model('medicine/medicine_model');
        $this->load->model('patient/patient_model');
        $this->load->model('doctor/doctor_model');
        if (!$this->ion_auth->in_group(array('admin', 'Pharmacist', 'Doctor', 'Patient', 'Nurse'))) {
            redirect('home/permission');
        }
    }

    public function index() {

        if ($this->ion_auth->in_group(array('Patient'))) {
            redirect('home/permission');
        }

        $data['patients'] = $this->patient_model->getPatient();
        $data['doctors'] = $this->doctor_model->getDoctor();
        if ($this->ion_auth->in_group(array('Doctor'))) {
            $current_user = $this->ion_auth->get_user_id();
            $doctor_id = $this->db->get_where('doctor', array('ion_user_id' => $current_user))->row()->id;
        }
        $data['prescriptions'] = $this->prescription_model->getPrescriptionByDoctorId($doctor_id);
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard', $data); // just the header file
        $this->load->view('prescription', $data);
        $this->load->view('home/footer'); // just the header file
    }

    function all() {

        if (!$this->ion_auth->in_group(array('admin', 'Doctor', 'Pharmacist'))) {
            redirect('home/permission');
        }

        //$data['medicines'] = $this->medicine_model->getMedicine();
        //$data['patients'] = $this->patient_model->getPatient();
        //$data['doctors'] = $this->doctor_model->getDoctor();
       // $data['prescriptions'] = $this->prescription_model->getPrescription();
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard', $data); // just the header file
        $this->load->view('all_prescription', $data);
        $this->load->view('home/footer'); // just the header file
    }

    function getAllPrescriptions() {
        header('Content-Type: application/json');
        $requestData = $_REQUEST;
        $start = $requestData['start'];
        $limit = $requestData['length'];
        $search = $this->input->post('search')['value'];
        $orderColumnIndex = $requestData['order'][0]['column'];
        $orderDirection = $requestData['order'][0]['dir'];
        $columns = array(
            0 => 'id',       // Replace with the actual column names
            1 => 'converted_date',
            2 => 'doctor_name',
            3 => 'patient_id',
            4 => 'patient_name',
            5 => 'name'
            // ... add more columns as needed
        );
        $orderBy = $columns[$orderColumnIndex];
        if ($limit == -1) {
            if (!empty($search)) {
                $data['allprescriptions'] = $this->prescription_model->getPrescriptionBySearch($search, $orderBy, $orderDirection);
            } else {
                $data['allprescriptions'] = $this->prescription_model->getAllPrescriptions($orderBy, $orderDirection);
            }
        } else {
            if (!empty($search)) {
                $data['allprescriptions'] = $this->prescription_model->getPrescriptionByLimitBySearch($limit, $start, $search, $orderBy, $orderDirection);
           } else {
                 $data['allprescriptions'] = $this->prescription_model->getPrescriptionByLimit($limit, $start, $orderBy, $orderDirection);
            }
        }
        //  $data['patients'] = $this->patient_model->getPatient();

        foreach ($data['allprescriptions'] as $prescription) {
            $options1 = '<a class="btn btn-info btn-xs detailsbutton" title="'.lang('view').'" href="prescription/viewPrescription?id='. $prescription->id .'"><i class="fa fa-eye"> '. lang('view').'</i></a>   
            <a class="btn btn-info btn-xs" title="'.lang('edit').'" href="prescription/editPrescription?id='.$prescription->id.'" data-toggle="modal" data-id="'.$prescription->id.'"><i class="fa fa-edit"></i> '.lang('edit').'</a>
            <a class="btn btn-info btn-xs delete_button" href="prescription/delete?id='.$prescription->id.'&admin=1" title="'. lang('delete').'" onclick="return confirm(\'Are you sure you want to delete this item?\');"><i class="fa fa-trash-o"> </i> '.lang('delete').'</a>';
            $info[] = array(
                $prescription->id,
                $prescription->converted_date,
                $prescription->doctor_name,
                $prescription->patient,
                $prescription->patient_name,
                $prescription->name . ' | ' . $prescription->medicine_dosage,
                //$this->settings_model->getSettings()->currency . $this->patient_model->getDueBalanceByPatientId($patient->id),
                $options1,
                    //  $options2
            );
        }
        if (!empty($data['allprescriptions'])) {
            $output = array(
                "draw" => intval($requestData['draw']),
                "recordsTotal" => $this->db->get('prescription')->num_rows(),
                "recordsFiltered" => $this->db->get('prescription')->num_rows(),
                "data" => $info
            );
        } else {
            $output = array(
                // "draw" => 1,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        echo json_encode($output);
    }


    public function getPatients() {
        $searchTerm = $this->input->get('q'); // Get the search term from the 'q' parameter
        $patients = $this->patient_model->searchPatients($searchTerm);
        echo json_encode($patients);
    }
    

    // Controller
    public function filterPatients() {
        $filter = $this->input->get('filter');
        $filteredPatients = $this->patient_model->getFilteredPatients($filter);
        echo json_encode(['patients' => $filteredPatients]);
    }



    public function addPrescriptionView() {

        if (!$this->ion_auth->in_group(array('admin', 'Doctor'))) {
            redirect('home/permission');
        }

        $data = array();
        $data['medicines'] = $this->medicine_model->getMedicine(); 
        $data['doctors'] = $this->doctor_model->getDoctor();
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard', $data); // just the header file
        $this->load->view('add_new_prescription_view', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addNewPrescription() {

        if (!$this->ion_auth->in_group(array('admin', 'Doctor'))) {
            redirect('home/permission');
        }

        $id = $this->input->post('id');
        $tab = $this->input->post('tab');
        $date = $this->input->post('date');
        if (!empty($date)) {
            $date = strtotime($date);
        }

        $patient = $this->input->post('patient');
        $doctor = $this->input->post('doctor');
        $symptom = $this->input->post('symptom');
        $medicine = $this->input->post('medicine');
        $dosage = $this->input->post('dosage');
        $frequency = $this->input->post('frequency');
        $days = $this->input->post('days');
        $instruction = $this->input->post('instruction');
        $note = $this->input->post('note');
        $admin = $this->input->post('admin');

        $report = array();

        if (!empty($medicine)) {
            foreach ($medicine as $key => $value) {
                $report[$value] = array(
                    'dosage' => $dosage[$key],
                    'frequency' => $frequency[$key],
                    'days' => $days[$key],
                    'instruction' => $instruction[$key],
                );

                // }
            }

            foreach ($report as $key1 => $value1) {
                $final[] = $key1 . '***' . implode('***', $value1);
            }

            $final_report = implode('###', $final);
        } else {
            $final_report = '';
        }





        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Date Field
        $this->form_validation->set_rules('date', 'Date', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Patient Field
        $this->form_validation->set_rules('patient', 'Patient', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Doctor Field
        $this->form_validation->set_rules('doctor', 'Doctor', 'trim|min_length[1]|max_length[100]|xss_clean');
        // Validating Advice Field
        $this->form_validation->set_rules('symptom', 'History', 'trim|min_length[1]|max_length[1000]|xss_clean');
        // Validating Do And Dont Name Field
        $this->form_validation->set_rules('note', 'Note', 'trim|min_length[1]|max_length[1000]|xss_clean');
        // Validating Validity Field
        $this->form_validation->set_rules('validity', 'Validity', 'trim|min_length[1]|max_length[100]|xss_clean');



        if ($this->form_validation->run() == FALSE) {
            if (!empty($id)) {
                redirect('prescription/editPrescription?id=' . $id);
            } else {
                $data = array();
                $data['setval'] = 'setval';
                $data['medicines'] = $this->medicine_model->getMedicine(); 
                $data['doctors'] = $this->doctor_model->getDoctor();
                $data['settings'] = $this->settings_model->getSettings();
                $this->load->view('home/dashboard', $data); // just the header file
                $this->load->view('add_new_prescription_view', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $data = array();
            $data = array('date' => $date,
                'patient' => $patient,
                'doctor' => $doctor,
                'symptom' => $symptom,
                'medicine' => $final_report,
                'note' => $note,
            );
            if (empty($id)) {
                $this->prescription_model->insertPrescription($data);
                $this->session->set_flashdata('feedback', 'Added');
            } else {
                $this->prescription_model->updatePrescription($id, $data);
                $this->session->set_flashdata('feedback', 'Updated');
            }

            if (!empty($admin)) {
                redirect('prescription/all');
            } else {
                redirect('prescription');
            }
        }
    }

    function viewPrescription() {
        $id = $this->input->get('id');
        $data['prescription'] = $this->prescription_model->getPrescriptionById($id);

        if (!empty($data['prescription']->hospital_id)) {
            if ($data['prescription']->hospital_id != $this->session->userdata('hospital_id')) {
                $this->load->view('home/permission');
            } else {
                $data['settings'] = $this->settings_model->getSettings();
                $this->load->view('home/dashboard', $data); // just the header file
                $this->load->view('prescription_view_1', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $this->load->view('home/permission');
        }
    }

    function editPrescription() {
        $data = array();
        $id = $this->input->get('id'); 
        $data['doctors'] = $this->doctor_model->getDoctor();
        $data['medicines'] = $this->medicine_model->getMedicine();
        $data['prescription'] = $this->prescription_model->getPrescriptionById($id);
        $data['settings'] = $this->settings_model->getSettings();

         // Get selected patient info
        $selectedPatientId = !empty($data['prescription']->patient) ? $data['prescription']->patient : set_value('patient');
        $selectedPatient = $this->patient_model->getPatientById($selectedPatientId); // Assuming you have a method to get patient details by ID
        $data['selectedPatientId'] = $selectedPatientId;
        $data['selectedPatientName'] = $selectedPatient ? $selectedPatient->name : '';

        $this->load->view('home/dashboard', $data); // just the header file
        $this->load->view('add_new_prescription_view', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function editPrescriptionByJason() {
        $id = $this->input->get('id');
        $data['prescription'] = $this->prescription_model->getPrescriptionById($id);
        echo json_encode($data);
    }

    function getPrescriptionByPatientIdByJason() {
        $id = $this->input->get('id');
        $prescriptions = $this->prescription_model->getPrescriptionByPatientId($id);
        foreach ($prescriptions as $prescription) {
            $lists[] = ' <div class="pull-left prescription_box" style = "padding: 10px; background: #fff;"><div class="prescription_box_title">Prescription Date</div> <div>' . date('d-m-Y', $prescription->date) . '</div> <div class="prescription_box_title">Medicine</div> <div>' . $prescription->medicine . '</div> </div> ';
        }
        $data['prescription'] = $lists;
        $lists = NULL;
        echo json_encode($data);
    }

    function delete() {
        $id = $this->input->get('id');
        $admin = $this->input->get('admin');
        $patient = $this->input->get('patient');
        $this->prescription_model->deletePrescription($id);
        $this->session->set_flashdata('feedback', 'Deleted');
        if (!empty($patient)) {
            redirect('patient/caseHistory?patient_id=' . $patient);
        } elseif (!empty($admin)) {
            redirect('prescription/all');
        } else {
            redirect('prescription');
        }
    }

    public function prescriptionCategory() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        $data['categories'] = $this->prescription_model->getPrescriptionCategory();
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard', $data); // just the header file
        $this->load->view('prescription_category', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addCategoryView() {
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard', $data); // just the header file
        $this->load->view('add_new_category_view');
        $this->load->view('home/footer'); // just the header file
    }

    public function addNewCategory() {
        $id = $this->input->post('id');
        $category = $this->input->post('category');
        $description = $this->input->post('description');

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Category Name Field
        $this->form_validation->set_rules('category', 'Category', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Description Field
        $this->form_validation->set_rules('description', 'Description', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $data['settings'] = $this->settings_model->getSettings();
            $this->load->view('home/dashboard', $data); // just the header file
            $this->load->view('add_new_category_view');
            $this->load->view('home/footer'); // just the header file
        } else {
            $data = array();
            $data = array('category' => $category,
                'description' => $description
            );
            if (empty($id)) {
                $this->prescription_model->insertPrescriptionCategory($data);
                $this->session->set_flashdata('feedback', 'Added');
            } else {
                $this->prescription_model->updatePrescriptionCategory($id, $data);
                $this->session->set_flashdata('feedback', 'Updated');
            }
            redirect('prescription/prescriptionCategory');
        }
    }

    function edit_category() {
        $data = array();
        $id = $this->input->get('id');
        $data['prescription'] = $this->prescription_model->getPrescriptionCategoryById($id);
        $data['settings'] = $this->settings_model->getSettings();
        $this->load->view('home/dashboard', $data); // just the header file
        $this->load->view('add_new_category_view', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function editPrescriptionCategoryByJason() {
        $id = $this->input->get('id');
        $data['prescriptioncategory'] = $this->prescription_model->getPrescriptionCategoryById($id);
        echo json_encode($data);
    }

    function deletePrescriptionCategory() {
        $id = $this->input->get('id');
        $this->prescription_model->deletePrescriptionCategory($id);
        $this->session->set_flashdata('feedback', 'Deleted');
        redirect('prescription/prescriptionCategory');
    }

}

/* End of file prescription.php */
/* Location: ./application/modules/prescription/controllers/prescription.php */
