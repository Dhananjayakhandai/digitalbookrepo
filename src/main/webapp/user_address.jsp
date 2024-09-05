<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp"%>

<div class="container">
    <div class="row p-3">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Address</h3>

                    <form action="">
                
                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Adress</label><input
                            type="text" class="form-control" id="inputpassword4">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputpassword4">Landmark</label> <input type="text"
                            class="form-control" id="inputpassword4">
                        </div>
                    </div>


                    <div class="form-row">

                        <div class="form-group col-md-4">
                            <label for="inputPassword4">City</label><input type="text"
                            class="form-control" id="inputPassword4">                      
                        </div>

                        <div class="form-group col-md-4">
                            <label for="inputPassword4">State</label><input type="text"
                            class="form-control" id="inputPassword4">                      
                        </div>

                        <div class="form-group col-md-4">
                            <label for="inputpassword4">Pin</label> <input type="text"
                                class="form-control" id="inputpassword4">
                        </div>
                    </div>

                    <div class="text-center"></div>
                    <button  class="btn btn-warning text-white">Add Address</button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>