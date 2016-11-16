<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User manager</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
    <style type="text/css"> .myrow-container {
        margin: 20px;
    } </style>
</head>
<body class="container">
<div class="container myrow-container">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h2 class="panel-title">
                <strong>User manager</strong>
            </h2>
        </div>
        <div class="panel-body">
            <div class="row" style="margin-bottom: 15px;">
                <div class="col-md-2">
                    <a class="btn btn-success" href="createUser" role="button">Add User</a>
                </div>
                <c:if test="${not empty userList}">
                    <div class="col-md-5">
                        <form class="form-inline" action="searchUser">
                            <div class="input-group">
                                <input class="form-control" type='text' name='searchName' id='searchName'
                                       placeholder="Search users..."/>
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type='submit'>Search</button>
                                </span>
                            </div>
                        </form>
                    </div>
                </c:if>
            </div>
            <c:if test="${empty userList}">
                <div>There are no Users</div>
            </c:if>
            <c:if test="${not empty userList}">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr class="success">
                        <th class="col-sm-1">Id</th>
                        <th class="col-sm-4">Name</th>
                        <th class="col-sm-1">Age</th>
                        <th class="col-sm-2">Admin</th>
                        <th class="col-xs-2 text-center">Created on</th>
                        <th class="col-sm-1 text-center">Edit</th>
                        <th class="col-sm-1 text-center">Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="user">
                        <tr>
                            <td><c:out value="${user.id}"/></td>
                            <td><c:out value="${user.name}"/></td>
                            <td><c:out value="${user.age}"/></td>
                            <td>
                                <c:if test="${user.admin}">
                                    <a class="btn btn-info btn-xs"
                                       href="editUser?id=<c:out value='${user.id}'/>"
                                       role="button">Admin</a>
                                </c:if>
                            </td>
                            <td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd"
                                                                    value="${user.createdDate}"/></td>
                            <td class="text-center"><a class="btn btn-warning btn-xs"
                                                       href="editUser?id=<c:out value='${user.id}'/>"
                                                       role="button">Edit</a></td>
                            <td class="text-center"><a class="btn btn-danger btn-xs"
                                                       href="deleteUser?id=<c:out value='${user.id}'/>"
                                                       role="button">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
        <div class="panel-footer" style="text-align: center;">
            <ul class="pagination">
                <c:if test="${page == 1 || pagesCount == 1}">
                    <li class="disabled">
                        <span>first</span>
                    </li>
                    <li class="disabled">
                        <span>&laquo;</span>
                    </li>
                </c:if>

                <c:if test="${page > 1 && pagesCount > 1}">
                    <li>
                        <a href="?page=1">
                            <span>first</span>
                        </a>
                    </li>
                    <li>
                        <a href="?page=${page - 1}">
                            <span>&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach begin="1" end="${pagesCount}" step="1" var="index">
                    <li <c:if test="${index == page}"> class="active" </c:if>>
                        <a href="?page=${index}">${index}</a>
                    </li>
                </c:forEach>
                <c:if test="${pagesCount > 1 && page < pagesCount}">
                    <li>
                        <a href="?page=${page + 1}">
                            <span>&raquo;</span>
                        </a>
                    </li>
                    <li>
                        <a href="?page=${pagesCount}">
                            <span>last</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${page == pagesCount}">
                    <li class="disabled">
                        <span>&raquo;</span>
                    </li>
                    <li class="disabled">
                        <span>last</span>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
</body>
</html>