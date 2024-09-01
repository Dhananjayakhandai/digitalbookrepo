<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin: Add Books</title>
    <%@ include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
    <%@ include file="navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Edit Books</h4>
                        
                        <c:if test="${not empty succMsg}">
                            <p class="text-center text-success">${succMsg}</p>
                            <c:remove var="succMsg" scope="session" />
                        </c:if>
                        
                        <c:if test="${not empty failedMsg}">
                            <p class="text-center text-danger">${failedMsg}</p>
                            <c:remove var="failedMsg" scope="session" />
                        </c:if>
                        
                        <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                        BookDtls b = dao.getBookById(id);
                        %>
          
                        <form action="../edit_books" method="post">
                            <input type="hidden" name="id" value="<%= b.getBookId() %>">
                            
                            <div class="form-group">
                                <label for="exampleInputEmail1">Book Name*</label>
                                <input name="bname" type="text" class="form-control"
                                 id="exampleInputEmail1" aria-describedby="emailHelp" value="<%= b.getBookName() %>">
                            </div>
                            
                            <div class="form-group">
                                <label for="authorName">Author Name*</label>
                                <input name="author" type="text" class="form-control"
                                 id="authorName" aria-describedby="emailHelp" value="<%= b.getAuthor() %>">
                            </div>
                            
                            <div class="form-group">
                                <label for="exampleInputPassword1">Price*</label>
                                <input name="Price" type="number" class="form-control" 
                                id="exampleInputPassword1" value="<%= b.getPrice() %>">
                            </div>
                        
                            <div class="form-group">
                                <label for="inputState">Book Status</label>
                                <select id="inputState" name="status" class="form-control">
                                    <%
                                    if ("Active".equals(b.getStatus())) { 
                                    %>
                                    <option value="Active" selected>Active</option>
                                    <option value="Inactive">Inactive</option>
                                    <%
                                    } else {
                                    %>
                                    <option value="Active">Active</option>
                                    <option value="Inactive" selected>Inactive</option>
                                    <%
                                    }
                                    %>                            
                                    <option value="New">New Book</option>
                                </select>
                            </div>    
                            
                            <button type="submit" class="btn btn-primary">Update</button>      
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
