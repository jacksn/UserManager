<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Information</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <style type="text/css"> .myrow-container {
        margin: 20px;
    } </style>

    <script type="text/javascript">
        function formValidation() {
            var name = document.userRegisterForm.name;
            var age = document.userRegisterForm.age;


            if (name.length == 0) {
                alert('Please enter name');
                name.focus();
                return false;
            }

//            var letters = /^[A-Za-z]+$/;
//
//            if (!name.value.match(letters)) {
//                alert('Username must have alphabet characters only');
//                name.focus();
//                return false;
//            }

            if (age.length == 0) {
                alert('Please enter age');
                age.focus();
                return false;
            }

//            var numbers = /^[0-9]+$/;
//
//            if (!age.value.match(letters)) {
//                alert('Age must have numeric characters only');
//                age.focus();
//                return false;
//            }

            if (age.value <= 0 || age.value > 150) {
                alert('Please enter proper age');
                age.focus();
                return false;
            }

            return true;
        }
    </script>

</head>
<body class="container">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h2 class="panel-title">
                <strong>User Details</strong>
            </h2>
        </div>
        <div class="panel-body">
            <form:form name="userRegisterForm" id="userRegisterForm" cssClass="form-horizontal" modelAttribute="user"
                       method="post"
                       action="saveUser" onsubmit="return formValidation();">

                <div class="form-group">
                    <form:label cssClass="control-label col-xs-3" path="name">Name</form:label>
                    <div class="col-xs-6">
                        <form:hidden path="id" value="${userObject.id}"/>
                        <form:input cssClass="form-control" path="name" id="name" value="${userObject.name}"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="age" cssClass="control-label col-xs-3">Age</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" path="age" id="age" value="${userObject.age}"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:label path="admin" cssClass="control-label col-xs-3">User group</form:label>
                    <div class="col-xs-6">

                        <div class="radio">
                            <label>
                                <input id="radioAdmin" name="admin" type="radio" value="true"
                                        <c:if test="${userObject.admin}"> checked="checked"</c:if> />
                                Admin
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input id="radioUser" name="admin" type="radio" value="false"
                                        <c:if test="${!userObject.admin}"> checked="checked"</c:if> />
                                User
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-6">
                        <button type="submit" id="saveUser" class="btn btn-success btn-sm">
                            Save
                        </button>
                    </div>
                </div>

            </form:form>
        </div>
    </div>
</div>
</body>
</html>