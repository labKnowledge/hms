<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>

    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- Include DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

    <!-- Include DataTables JS -->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</head>

<body>

    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper site-min-height">
            <!-- page start-->
            <section class="panel">
                <header class="panel-heading">
                    <?php echo "Daily Report" ?>
                </header>
                <div class="space15"></div>
                <div class="col-md-12">
                    <div class="col-md-7">
                        <section class="panel-body">
                            <form role="form" action="finance/dailyReport" class="clearfix" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <div class="col-md-6">
                                        <div class="input-group input-large" data-date="13/07/2013" data-date-format="mm/dd/yyyy">
                                            <input type="text" class="form-control dpd1" name="date_from" value="<?php
                                        if (!empty($from)) {
                                            echo $from;
                                        }
                                        ?>" placeholder="<?php echo lang('date_from'); ?>">
                                            <span class="input-group-addon">To</span>
                                            <input type="text" class="form-control dpd2" name="date_to" value="<?php
                                        if (!empty($to)) {
                                            echo $to;
                                        }
                                        ?>" placeholder="<?php echo lang('date_to'); ?>">
                                        </div>
                                        <div class="row"></div>
                                        <span class="help-block"></span>
                                    </div>
                                    <div class="col-md-6">
                                        <button type="submit" name="submit" class="btn btn-info range_submit"><?php echo lang('submit'); ?></button>
                                    </div>
                                </div>
                            </form>
                        </section>
                    </div>
                    <div class="col-md-5">
                    </div>
                </div>
                <div class="panel-body">
                    <div class="adv-table editable-table ">
                        <div class="clearfix">
                            <button class="export" onclick="javascript:window.print();"><?php echo lang('print'); ?></button>
                        </div>
                        <div class="space15">
                            <?php
                        if (!empty($from) && !empty($to)) {
                            echo "From $from To $to";
                        }
                        ?>
                        </div>

                        <div class="space15"></div>

                     <div class="panel-body">
                        <label for="procdFilter">Filter by Procedure:</label>
                        <?php
                        $data = $payments;
                        $uniqueTitles = array_unique(array_column($data, 'title'));
                        ?>
                        <select id="procdFilter" class="form-control" style="width: 150px;">
                              <option value="">All</option>
                            <?php
                            foreach ($uniqueTitles as $title) {
                                ?>
                                <option value="<?php echo $title; ?>"><?php echo $title; ?></option>
                                <?php
                            }
                            ?>
                          
                        </select>
                    </div>


                      <div class="panel-body">
                        <label for="fromAgeFilter">From Age:</label>
                        <?php
                        $data = $payments;

                        // Function to calculate age from birthdate
                        function calculateAge($birthdate) {
                            $birthDate = new DateTime($birthdate);
                            $currentDate = new DateTime();
                            $age = $currentDate->diff($birthDate)->y;
                            return $age;
                        }

                        // Create an array to store unique ages
                        $uniqueAges = array();

                        // Loop through the data to get unique ages
                        foreach ($data as $patient) {
                            $age = calculateAge($patient['birthdate']);
                            $uniqueAges[$age] = $age;
                        }
                        ?>
                        
                        <select id="fromAgeFilter" class="form-control" style="width: 150px;">
                              <option value="">All</option>
                            <?php
                            // Loop through unique ages for "From Age"
                            foreach ($uniqueAges as $age) {
                                ?>
                                <option value="<?php echo $age; ?>"><?php echo "Age $age"; ?></option>
                                <?php
                            }
                            ?>
                          
                        </select>

                        <label for="toAgeFilter">To Age:</label>
                        <select id="toAgeFilter" class="form-control" style="width: 150px;">
                              <option value="">All</option>
                            <?php
                            // Loop through unique ages for "To Age"
                            foreach ($uniqueAges as $age) {
                                ?>
                                <option value="<?php echo $age; ?>"><?php echo "Age $age"; ?></option>
                                <?php
                            }
                            ?>
                          
                        </select>
                        <button id="filterButton">Filter</button>
                    </div>




                        <div class="space15"></div>

                        <!-- Table for Total Entries -->
                        <table class="table table-striped table-hover table-bordered table-responsive" id="totalEntriesTable">
                            <thead>
                                <tr>
                                    <th>Total Entries</th>
                                    <th id="totalEntries"><?php echo count($payments); ?></th>
                                </tr>
                            </thead>
                        </table>

                        <!-- Table for Statistical Report -->
                        <table class="table table-striped table-hover table-bordered table-responsive" id="statisticalReportTable">
                            <thead>
                                <tr>
                                    <th>Gender</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Male</td>
                                    <td id="totalMale">0</td>
                                </tr>
                                <tr>
                                    <td>Female</td>
                                    <td id="totalFemale">0</td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="clearfix"></div>

                        <div class="space15"></div>
                        <table class="table table-striped table-hover table-bordered table-responsive" id="comission-editable-sample2">
                            <thead>
                                <tr>
                                    <th>Patient ID</th>
                                    <th><?php echo lang('patient'); ?></th>
                                    <th>Gender</th>
                                    <th>DOB</th>
                                    <th><?php echo "PROCD"; ?></th>
                                    <th><?php echo lang('doctor'); ?></th>
                                    <th><?php echo "LAB"; ?></th>
                                    <th><?php echo "PHARMACY"; ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $totalMale = 0;
                                $totalFemale = 0;

                                foreach ($payments as $payment) {
                                    $LAB = "";
                                    $SUNDRIES = "";
                                    $PROCEDURE = "";
                                    $SP = "";
                                    $pharmacy = "";
                                    $CONS = "";
                                    $CREDIT = "";
                                    $CASH = "";
                                    $category_name = ""; // Initialize the variable to prevent undefined variable notice
                                    $category_name1 = explode(',', $category_name);
                                    $i = 0;
                                    if (!empty($payment['prescription'])) {
                                        $medicine = explode('###', $payment['prescription'][0]->medicine);
                                        foreach ($medicine as $key => $value) {
                                            $medicine_id = explode('***', $value);
                                            $medicine_info = $this->medicine_model->getMedicineById($medicine_id[0]);

                                            // Check if $medicine_info is an object before accessing its 'name' property
                                            if (is_object($medicine_info) && isset($medicine_info->name)) {
                                                $medicine_name_with_dosage = $medicine_info->name . ' -' . $medicine_id[1];
                                                $medicine_name_with_dosage = $medicine_name_with_dosage . ' | ' . $medicine_id[3] . '<br>';
                                                rtrim($medicine_name_with_dosage, ',');
                                                $SUNDRIES = $SUNDRIES . '<p>' . $medicine_name_with_dosage . '</p>';
                                            } else {
                                                // Default to empty if $medicine_info is not an object or 'name' property is not set
                                                $SUNDRIES = $SUNDRIES . '<p></p>';
                                            }
                                        }
                                    }
                                    

                                    if (!empty($payment['lab'])) {
                                        $LAB = $payment['lab'][0]->report;
                                    }
      $doctor_details = $this->doctor_model->getDoctorById($payment['doctor']);

if (!empty($doctor_details)) {
    $doctor = $doctor_details->name;
} elseif (!empty($payment['doctor_name'])) {
    $doctor = $payment['doctor_name'];
} else {
    $doctor = 'Doctor Name not available';

                                    }
                                    $date = date('d-m-y', $payment['date']);
                                    $patient_info = $this->db->get_where('patient', array('id' => $payment['id']))->row();
                                    if (!empty($patient_info)) {
                                        $patient_details = $patient_info->name . '</br>' . $patient_info->address . '</br>' . $patient_info->phone . '</br>';
                                    } else {
                                        $patient_details = ' ';
                                    }
                                    ?>
                                    <tr class="">
                                        <td><?php if (is_array($payment) && array_key_exists('id', $payment)) {
                                            echo $payment['id'];
                                            } else {
                                            echo "Patient ID";
                                            } ?></td>
                                        <td><?php echo $patient_details; ?></td>
                                        <td><?php echo $payment['sex']; ?></td>
                                        <td><?php echo $payment['birthdate']; ?></td>
                                        <td><?php if (is_array($payment) && array_key_exists('title', $payment)) {
                                            echo $payment['title'];
                                            } else {
                                        echo "Procedure Title not available";
                                        } ?></td>
                                        <td><?php echo $doctor; ?></td>
                                        <td><?php echo $LAB; ?></td>
                                        <td><?php echo $SUNDRIES; ?></td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
            <!-- page end-->
        </section>
    </section>
    <!--main content end-->
    <!--footer start-->
<!-- Include jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- Include DataTables library -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<!-- Your DataTable initialization and other scripts here -->

<!-- Add jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- Your combined JavaScript code -->
<script>
    $(document).ready(function () {
        // Initialize DataTable for the existing table
        var dataTable = $('#comission-editable-sample2').DataTable();

        // Function to update total entries
        function updateTotalEntries() {
            var totalEntries = dataTable.rows().count();
            $('#totalEntries').text(totalEntries);
            $('#entriesInfo').text("Showing 1 to " + totalEntries + " of " + totalEntries + " entries");

            // Update statistical report content
            updateStatisticalReport();
        }

        // Function to update statistical report content
        function updateStatisticalReport() {
            // Count total males and females
            var totalMale = 0;
            var totalFemale = 0;
            var procedure = ""

            // Loop through DataTable rows to count genders
            dataTable.rows().every(function () {
                var gender = this.data()[2]; // Assuming gender is in the third column, adjust if needed

                if (gender.toLowerCase() === 'male') {
                    totalMale++;
                } else if (gender.toLowerCase() === 'female') {
                    totalFemale++;
                }

                return true;
            });

            // Update the total male and female counts in the table
            $('#totalMale').text(totalMale);
            $('#totalFemale').text(totalFemale);
        }

        // Event handler for page change, filtering/searching, and draw event
        $('#comission-editable-sample2').on('page.dt search.dt draw.dt', function () {
            updateTotalEntries();
        });

        // Initial update
        updateTotalEntries();

        // Add a dropdown filter for the "PROCD" column
        var procdColumnIndex = 4; // Adjust this if "PROCD" is in a different column
        var uniqueProcdValues = dataTable.column(procdColumnIndex).data().unique().toArray();
        var procdDropdown = $('<select id="procdFilter"><option value="">All</option></select>')
            .appendTo($('#comission-editable-sample2_filter')) // Use the DataTables filter container
            .on('change', function () {
                var selectedValue = $.fn.dataTable.util.escapeRegex($(this).val());
                dataTable.column(procdColumnIndex).search(selectedValue ? '^' + selectedValue + '$' : '', true, false).draw();
                updateStatisticalReport(); // Update statistical report when the selection changes
            });

        // Populate the dropdown with unique values
        $.each(uniqueProcdValues, function (index, value) {
            procdDropdown.append('<option value="' + value + '">' + value + '</option>');
        });

        // Event handler for the age filter button click
        $("#filterButton").on("click", function () {
            var fromAge = $("#fromAgeFilter").val();
            var toAge = $("#toAgeFilter").val();
             var proc = $("#procdFilter").val();

            // Update the totals based on the selected age range
            updateTotals(fromAge, toAge,proc);
        });

        // Function to update totals based on age range
// Function to update totals based on age range
function updateTotals(fromAge, toAge, proc) {
    var totalMale = 0;
    var totalFemale = 0;

    // Iterate through each row in the table
    $("#comission-editable-sample2 tbody tr").each(function () {
        var gender = $(this).find("td:nth-child(3)").text(); // Assuming gender is in the third column
        var dobString = $(this).find("td:nth-child(4)").text(); // Assuming DOB is in the fourth column
         var procedure = $(this).find("td:nth-child(5)").text(); 

        // Convert date string to a JavaScript Date object
        var dob = new Date(dobString);

        // Calculate age based on the difference between the current date and birthdate
        var age = calculateAge(dob);

        // Increment the totals based on the selected age range and gender
        if ((fromAge === "" || age >= parseInt(fromAge)) && (toAge === "" || age <= parseInt(toAge))&& (proc === "" || procedure == proc)) {
            if (gender === "Male") {
                totalMale++;
            } else if (gender === "Female") {
                totalFemale++;
            }
        }
    });

    // Update the totalMale and totalFemale elements
    $("#totalMale").text(totalMale);
    $("#totalFemale").text(totalFemale);
    $("#totalEntries").text(totalMale+totalFemale);
    
}

// Function to calculate age from birthdate
function calculateAge(birthdate) {
    var currentDate = new Date();
    var age = currentDate.getFullYear() - birthdate.getFullYear();

    // Adjust age based on the birthdate and current date
    if (currentDate.getMonth() < birthdate.getMonth() || (currentDate.getMonth() === birthdate.getMonth() && currentDate.getDate() < birthdate.getDate())) {
        age--;
    }

    return age;
}

    });
</script>





</body>

</html>
