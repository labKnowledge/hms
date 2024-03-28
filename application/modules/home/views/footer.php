<footer class="site-footer">
    <div class="text-center">
        20<?php echo date('y'); ?> &copy; 
        <?php
        if ($this->ion_auth->in_group(array('superadmin'))) {
            $this->db->where('hospital_id', 'superadmin');
        } else {
            $this->db->where('hospital_id', $this->hospital_id);
        }
        echo $this->db->get('settings')->row()->system_vendor;
        ?> by Blueline Technologies.
        <a href="<?php echo current_full_url() . '#'; ?>" class="go-top">
            <i class="fa fa-angle-up"></i>
        </a>
    </div>
</footer>
<!--footer end-->
</section>



<!-- js placed at the end of the document so the pages load faster -->
<script src="common/js/jquery.js"></script>
<script src="common/js/jquery-1.8.3.min.js"></script>
<script src="common/js/bootstrap.min.js"></script>
<script src="common/js/jquery.scrollTo.min.js"></script>

<script src="common/js/moment.min.js"></script>

<!--
<script src="common/js/jquery.nicescroll.js" type="text/javascript"></script>
-->

<script type="text/javascript" src="common/assets/DataTables/datatables.min.js"></script>
<script src="common/js/respond.min.js" ></script>
<script type="text/javascript" src="common/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="common/assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="common/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script type="text/javascript" src="common/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<script type="text/javascript" src="common/assets/jquery-multi-select/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="common/assets/jquery-multi-select/js/jquery.quicksearch.js"></script>
<script type="text/javascript" src="common/assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="common/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script src="common/js/advanced-form-components.js"></script>
<script src="common/js/jquery.cookie.js"></script>
<!--common script for all pages--> 
<script src="common/js/common-scripts.js"></script>
<script class="include" type="text/javascript" src="common/js/jquery.dcjqaccordion.2.7.js"></script>
<!--script for this page only-->
<script src="common/js/editable-table.js"></script>
<script src="common/assets/fullcalendar/fullcalendar.js"></script>

<script type="text/javascript" src="common/assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>


<?php
$language = $this->db->get('settings')->row()->language;

if ($language == 'english') {
    $lang = 'en';
} elseif ($language == 'spanish') {
    $lang = 'es';
} elseif ($language == 'french') {
    $lang = 'fr';
} elseif ($language == 'portuguese') {
    $lang = 'pt';
} elseif ($language == 'arabic') {
    $lang = 'ar';
} elseif ($language == 'italian') {
    $lang = 'it';
}
?>



<script src='common/assets/fullcalendar/locale/<?php echo $lang; ?>.js'></script>



<style>

</style>



<script>
    $(document).ready(function () {
        $('#comission-editable-sample').DataTable({
            responsive: true,

            dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5',
                {
                    extend: 'print',
                    exportOptions: {
                        columns: [0, 1],
                    }
                },
            ],

            aLengthMenu: [
                [10, 25, 50, 100, -1],
                [10, 25, 50, 100, "All"]
            ],
            iDisplayLength: -1,
            "order": [[0, "desc"]],

            "language": {
                "lengthMenu": "_MENU_ records per page",
                "url": "common/assets/DataTables/languages/<?php echo $this->language; ?>.json" 
            }


        });
    });
    </script>
<script>


$(document).ready(function () {
   var table = $('#payment-payments-editable-sample').DataTable({
    responsive: true,

dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'row'<'col-sm-5'i><'col-sm-7'p>>",
buttons: [
    'copyHtml5',
    'excelHtml5',
    'csvHtml5',
    'pdfHtml5',
    {
        extend: 'print',
        exportOptions: {
            columns: [0, 1],
        }
    },
],

aLengthMenu: [
    [10, 25, 50, 100, -1],
    [10, 25, 50, 100, "All"]
],
iDisplayLength: -1,
"order": [[0, "desc"]],

"language": {
    "lengthMenu": "_MENU_ records per page",
    "url": "common/assets/DataTables/languages/<?php echo $this->language; ?>.json" 
}


    });
    table.buttons().container().appendTo('.custom_buttons'); 
    
});

</script>

<script>


$(document).ready(function () {
   var table = $('#activity-editable-sample').DataTable({
    responsive: true,

dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'row'<'col-sm-5'i><'col-sm-7'p>>",
buttons: [
    'copyHtml5',
    'excelHtml5',
    'csvHtml5',
    'pdfHtml5',
    {
        extend: 'print',
        exportOptions: {
            columns: [0, 1],
        }
    },
],

aLengthMenu: [
    [10, 25, 50, 100, -1],
    [10, 25, 50, 100, "All"]
],
iDisplayLength: -1,
"order": [[0, "desc"]],

"language": {
    "lengthMenu": "_MENU_ records per page",
    "url": "common/assets/DataTables/languages/<?php echo $this->language; ?>.json" 
}


    });
    table.buttons().container().appendTo('.custom_buttons'); 
    
});

</script>

<script>


$(document).ready(function () {
   var table = $('#patient-deposit-editable-sample').DataTable({
    responsive: true,

dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'row'<'col-sm-5'i><'col-sm-7'p>>",
buttons: [
    'copyHtml5',
    'excelHtml5',
    'csvHtml5',
    'pdfHtml5',
    {
        extend: 'print',
        exportOptions: {
            columns: [0, 1],
        }
    },
],

aLengthMenu: [
    [10, 25, 50, 100, -1],
    [10, 25, 50, 100, "All"]
],
iDisplayLength: -1,
"order": [[0, "desc"]],

"language": {
    "lengthMenu": "_MENU_ records per page",
    "url": "common/assets/DataTables/languages/<?php echo $this->language; ?>.json" 
}


    });
    table.buttons().container().appendTo('.custom_buttons'); 
    
});

</script>



<script>
    $('.multi-select').multiSelect({
        selectableHeader: "<input type='text' class='search-input' autocomplete='off' placeholder=' search...'>",
        selectionHeader: "<input type='text' class='search-input' autocomplete='off' placeholder=''>",
        afterInit: function (ms) {
            var that = this,
                    $selectableSearch = that.$selectableUl.prev(),
                    $selectionSearch = that.$selectionUl.prev(),
                    selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                    selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

            that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                    .on('keydown', function (e) {
                        if (e.which === 40) {
                            that.$selectableUl.focus();
                            return false;
                        }
                    });

            that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                    .on('keydown', function (e) {
                        if (e.which == 40) {
                            that.$selectionUl.focus();
                            return false;
                        }
                    });
        },
        afterSelect: function () {
            this.qs1.cache();
            this.qs2.cache();
        },
        afterDeselect: function () {
            this.qs1.cache();
            this.qs2.cache();
        }
    });
</script>

<script>
    $('#my_multi_select3').multiSelect()
</script>

<script>
    $('.default-date-picker').datepicker({
        format: 'dd-mm-yyyy',
        autoclose: true
    });


    $('#date').on('changeDate', function () {
        $('#date').datepicker('hide');
    });

    $('#date1').on('changeDate', function () {
        $('#date1').datepicker('hide');
    });


</script>


<script type="text/javascript">

    $(document).ready(function () {
        $('#calendar').fullCalendar({
            lang: 'en',
            events: 'appointment/getAppointmentByJason',
            header:
                    {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay',
                    },
            /*    timeFormat: {// for event elements
             'month': 'h:mm TT A {h:mm TT}', // default
             'week': 'h:mm TT A {h:mm TT}', // default
             'day': 'h:mm TT A {h:mm TT}'  // default
             },
             
             */
            timeFormat: 'h(:mm) A',
            eventRender: function (event, element) {
                element.find('.fc-time').html(element.find('.fc-time').text());
                element.find('.fc-title').html(element.find('.fc-title').text());

            },
            slotDuration: '00:5:00',
            businessHours: false,
            slotEventOverlap: false,
            editable: false,
            selectable: false,
            lazyFetching: true,
            minTime: "6:00:00",
            maxTime: "24:00:00",
            defaultView: 'month',
            allDayDefault: false,
            displayEventEnd: true,
            timezone: false,

        });
    });

</script>









<script>
    $(document).ready(function () {
        $('.timepicker-default').timepicker({defaultTime: 'value'});

    });
</script>

<script type="text/javascript" src="common/assets/select2/js/select2.min.js"></script>


<script type="text/javascript">

    $(document).ready(function () {
        $(".js-example-basic-single").select2();
        $('#patientSelector').select2({
            ajax: {
                url: 'prescription/getPatients', // Replace with your actual URL
                dataType: 'json',
                processResults: function (data) {
                    return {
                        results: data // Assuming your JSON contains an array of results
                    };
                },
                cache: true
            }
        });

      
        
        $(".js-example-data-ajax").select2({
          
            ajax: {
                url: 'patient/getPatients',
                dataType: 'json',
                delay: 250, // Delay in milliseconds before sending the request
                processResults: function (data) {
                   
                    var formattedData = data.map(function (item) {
                        return {
                            id: item.id,
                            text: item.name
                        };
                    });

                    return {
                        results: formattedData
                    };
                },
                cache: true,
                // Additional settings to control the AJAX request
                data: function (params) {
                    return {
                        q: params.term // Add the search term as 'q' parameter
                    };
                }
            }
        });


        $(".js-example-basic-multiple").select2();
    });

</script>




<script type="text/javascript">

    $(document).ready(function () {
        var windowH = $(window).height();
        var wrapperH = $('#container').height();
        if (windowH > wrapperH) {
            $('#sidebar').css('height', (windowH) + 'px');
        } else {
            $('#sidebar').css('height', (wrapperH) + 'px');
        }
        var windowSize = window.innerWidth;
        if (windowSize < 768) {
            $('#sidebar').removeAttr('style');
        }
    });
    function onElementHeightChange(elm, callback) {
        var lastHeight = elm.clientHeight, newHeight;
        (function run() {
            newHeight = elm.clientHeight;
            if (lastHeight != newHeight)
                callback();
            lastHeight = newHeight;
            if (elm.onElementHeightChangeTimer)
                clearTimeout(elm.onElementHeightChangeTimer);
            elm.onElementHeightChangeTimer = setTimeout(run, 200);
        })();
    }




    onElementHeightChange(document.body, function () {
        var windowH = $(window).height();
        var wrapperH = $('#container').height();
        if (windowH > wrapperH) {
            $('#sidebar').css('height', (windowH) + 'px');
        } else {
            $('#sidebar').css('height', (wrapperH) + 'px');
        }

        var windowSize = $(window).width();
        if (windowSize < 768) {
            $('#sidebar').removeAttr('style');
        }
    });







    $(window).resize(function () {

        if (width == GetWidth()) {
            return;
        }

        width = GetWidth();

        if (width < 600) {
            $('#sidebar').hide();
        } else {
            $('#sidebar').show();
        }

    });


</script>




<script>
    CKEDITOR.replace("description",
            {
                height: 400
            });
</script>











</body>
</html>
