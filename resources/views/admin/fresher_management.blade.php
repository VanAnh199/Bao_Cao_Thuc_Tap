@extends('master')
@section("content")

<!-- modal box -->
<style>
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
    #snackbar {
        visibility: hidden;
        min-width: 250px;
        margin-left: -125px;
        background-color: #333;
        color: #fff;
        text-align: center;
        border-radius: 2px;
        padding: 16px;
        position: fixed;
        z-index: 1;
        left: 50%;
        bottom: 30px;
        font-size: 17px;
    }

    #snackbar.show {
        visibility: visible;
        opacity: 0.7;
    }
</style>
<div class="row">

<div id="snackbar"> @if($errors->any())
@foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>

                        @endforeach
    @endif</div>
</div>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">

            <div class="modal-body" id="detail">
                <div class="card">
                    <div class="card-header">
                        <h5 class="title">Add Fresher</h5>
                    </div>
                    <div class="card-body">
                        <form action="add_fresher" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Fullname</label>

                                        <input type="text" class="form-control" onkeyup="setEmail();" name="name" id="name" placeholder="name" required>
                                    </div>
                                </div>
                            </div>


                            <!-- onkeydown="return /[a-z, ]/i.test(event.key)" onblur="if (this.value == '') {this.value = '';}" onfocus="if (this.value == '') {this.value = '';}" -->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" onkeyup="mai_check_existed()" class="form-control" name="email" id="email" oncplaceholder="Email" required>
                                        <div id="check"></div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Date of birth</label>
                                        <input type="date" class="form-control" id="dob" name="dob" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div >
                                        <label for="exampleInputEmail1">Picture</label>
                                        <input class="form-control" type="file" name="pic" id="pic" onchange="return fileValidation()" required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 pr-1">
                                    <div class="form-group">
                                        <label>Part</label>
                                        <input type="text" class="form-control" placeholder="Part" name="part" required>
                                    </div>
                                </div>
                                <div class="col-md-4 px-1">
                                    <div class="form-group">
                                        <label>Class</label>
                                        <input type="text" class="form-control" placeholder="Class" name="class" required>
                                    </div>
                                </div>
                                <div class="col-md-4 pl-1">
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input type="number" class="form-control" placeholder="Phone" name="phone" required>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" name="submit" id="submit" class="submit-btn  btn-info btn"> Submit</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
<!-- ------------- -->
<div class="panel-header panel-header-sm">
</div>
<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <!-- {{$mess}} -->

                    <div class="row">
                    <div class="col-10"></div>

                        <button  data-toggle="modal" data-target="#myModal" class="col btn btn-info ">Add fresher</button>
                    </div>
                    <div>
                    <div style="text-align: center;">
                    <h3>FRESHER MANAGEMENT</h3>
                    </div>
                    </div>

                    <div class="input-group no-border">
                        <input type="text" id="search" onkeyup="searchFresher();" class="form-control" placeholder="Search...">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <i class="now-ui-icons ui-1_zoom-bold"></i>
                                <div class="drop" onclick="myFunctiondrop()" style="float:right;">
                            <button class="dropbtn" style="border: none;">Filter</button>

                        </div>
                            </div>
                        </div>
                       
                    </div>
                    <div class="row" id="demodrop" style="display: none;padding-bottom: 2%;">

                        <div class="col-6">

                            <legend>Choose class :</legend>
                            <?php $count = 1; ?>
                            <div id="checkboxes">
                                @foreach ($classes as $part)
                                <input type="checkbox" onclick="class_filter()" id="class" name="{{$part->class}}" value="{{$part->class}}">
                                <label for="vehicle1">{{$part->class}} </label><br>
                                <?php $count++; ?>

                                @endforeach
                            </div>
                        </div>

                        <!-- <input type="submit" value="Submit now" /> -->
                        <!-- </fieldset> -->
                    </div>
                    <!-- <input type="text" id="search" onkeyup="preClick(3);" placeholder="Search.."> -->

                </div>
                <div class="card-body">
                    <div style="overflow:auto;height: 400px;">
                        <table id="data" class="table">
                            <tbody id="databody">
                                <tr id="jstable1">

                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Part</th>
                                    <th>Class</th>
                                    <th>Function</th>
                                </tr>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <script>
    function fileValidation() {
            var fileInput =
                document.getElementById('pic');

            var filePath = fileInput.value;
            
            // Allowing file type
            var allowedExtensions =
                /(\.jpg|\.jpeg|\.png|\.gif)$/i;

            if (!allowedExtensions.exec(filePath)) {
                alert('Invalid file type');
                fileInput.value = '';
                return false;
            } else {

                // Image preview
                // if (fileInput.files && fileInput.files[0]) {
                //     var reader = new FileReader();
                //     reader.onload = function(e) {
                //         document.getElementById(
                //                 'imagePreview').innerHTML =
                //             '<img src="' + e.target.result +
                //             '"/>';
                //     };

                //     reader.readAsDataURL(fileInput.files[0]);
                // }
            }
        }
        var selected_ = [];
        function set_nav() {
            $(".nav1 li").removeClass("active");
            $('#fresher_nav').addClass('active');
        }
        function class_filter() {
            var selected = [];
            $('#checkboxes input:checked').each(function() {
                selected.push($(this).attr('name'));
            });
            selected_ = selected;
            searchFresher();
        }

        function deleteFresher(id_fresher) {
            var txt;
            if (confirm("Are you sure to delete ?")) {
                //yes

                searchFresher(id_fresher);
            } else {}
        }

        function detailFresher() {

        }

        function setEmail() {
            var name = document.getElementById("name").value;
            var lowcase = name.toLowerCase();
            var mail = '';
            const myArr1 = lowcase.split(" ");
            const myArr = [];
            for (var i = 0; i < myArr1.length; i++) {

                if (myArr1[i] === "") {
                    console.log("string herr :" + myArr1[i]);
                } else {
                    myArr.push(myArr1[i]);
                }
            }
            mail = myArr[myArr.length - 1];
            for (var i = 0; i < myArr.length - 1; i++) {
                mail = mail + myArr[i][0];
            }
            mail = mail + "@vmodev.com";
            mail = removeAccents(mail)
            //  document.getElementById("check").innerHTML = "Suggession mail:"+mail;
        }

        function removeAccents(str) {
            return str.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
        }

        function mai_check_existed() {
            var prev_mail = "";
            var txt = document.getElementById("email").value;
            console.log("value :" + txt);
            $.ajax({
                url: "/email_ajax",
                // method: "GET",
                type: "GET",
                data: {
                    search: txt,
                    prev_mail: prev_mail,
                },
                dataType: "json",
                success: function(data) {
                    // $('#result').html(data.msg);
                    console.log(data.msg);


                    if (data.msg == 0) {
                        document.getElementById("check").innerHTML = "Email available !";
                        document.getElementById("submit").disabled = false;
                    } else {
                        document.getElementById("check").innerHTML = "Email unavailable !";
                        document.getElementById("submit").disabled = true;
                    }
                    // $("#data").append(data.msg);
                    // document.getElementById('#result').innerHTML = data;
                    // $('#result').innerHTML = data
                }
            });
        }
        $(document).ready(function() {
            set_nav();
            <?php if ($errors->any()) { ?>
                    var x = document.getElementById("snackbar");
                    x.className = "show";
                    setTimeout(function() {
                        x.className = x.className.replace("show", "");
                    }, 3000);

                <?php } ?>
            searchFresher();
        });
        //ajax

        function searchFresher(delete_id) {
            //filter_class
            for (var i = 0; i < 3; i++) {
                if (typeof selected_[i] == 'undefined') {
                    // the variable is defined
                    selected_[i] = '';

                }
            }
            //alert(selected_);
            //delete by id
            var deleteid = -1;
            if (typeof delete_id == 'undefined') {
                // the variable is defined

            } else {
                deleteid = delete_id;
            }
            $('#databody').children('#abc').remove();
            var txt = document.getElementById("search").value;
            $('#result').html('');
            $.ajax({
                url: "/fresher_ajax",
                // method: "GET",
                type: "GET",
                data: {
                    search: txt,
                    deleteid: deleteid,
                    class1: selected_[0],
                    class2: selected_[1],
                    class3: selected_[2],
                },
                dataType: "json",
                success: function(data) {
                    // $('#result').html(data.msg);
                    // console.log(data.msg);
                    $("#data").append(data.msg);
                    // document.getElementById('#result').innerHTML = data;
                    // $('#result').innerHTML = data
                }
            });
        }
        //filter dropdown list
        function myFunctiondrop() {
            if (document.getElementById("demodrop").style.display == "none") {
                document.getElementById("demodrop").style.display = "flex";
            } else {
                document.getElementById("demodrop").style.display = "none";
            }
        }
    </script>
    @endsection