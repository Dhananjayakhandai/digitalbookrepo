<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDTLS"%>
<%@page import="java.util.list"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebbok: Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type=""text/css">
.back-img {
    background: url("img/b.jpg");
    height: 50vh;
    width:100%;
    background-size: cover;
    background-repeat: no-repeat;
}

.crd-ho:hover {
    background-color: #fcf7f7;
}
</style>

</head>
<body style="background-color: #f7f7f7;"

<%
User u = (User) session.getAttribute("userobj");
%>


<%@include file="all_component/navbar.jsp"%>
<div class="container_fluid back-img">
    <h2 class="text-center text-danger">EBook Management System</h2>
</div>


<!--Start Recent Book-->

<div class="container">
    <h3 class ="text-center">Recent Book</h3>
</div class="row">
    <%
    BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
    List<BookDTLS> list2 = dao2.getRecentBooks();
    for (BookDTLS b: list2) {
        %>
        <div class="col-md-3">
            <div class="card-crd-ho">
                <div class="card-body text-center">
                    <img alt="" src="book/%=b.getPhotoName()%>"
                         style="width: 150px; height:200px" class="img-thumbLin">
                    <p><%=b.getBookName()%></p>
                    <P><%=b.getAuthor()%></P>
                    <P>

                        <%
                        if (b.getBookCategory().equals("old")) {
                         %>
                         Categories:<%=b.getBookCategory()%></P>
                         <div class="row">
                            <a href="view_books.jsp?bid=<%=b.getBookId()%>"
                                class="btn btn-success btn-sm mL-1">View Details</a> <a href=""
                                class="btn btn-danger btn-sm-mL-1"><%=b.getPrice()%><i 
                                class="fas fa-rupee-sign"></i></a>
                         </div>
                         <%
                        } else {
                         %>
                         Categories:<%b.getBookCategory()%</p>
                         <div class="row">


                            <%
                            if (u == null) {
                            %>
                            <a href="Login.jsp" class="btn btn-danger btn-sm ml-2"></a>
                            <%
                            } else {
                            %>
                            <a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-5px"></a>
                            <%
                            }
                            %>

                            <a href="view_books.jsp?bid=<%=b.getBookId()%"
                            class="btn btn-success btn-sm-mL-1">View Details</a>

                            <a href=""
                            class="btn-danger btn-sm "><%=b.getPrice()%><i
                            class="fas fa-rupee-sign"></i></a>
                         </div>
                         <%
                         }
                         %>


                </div>
            </div>
         </div>
         <%
         }
         %>

    </div>
    <div class="text-center mt-1">
        <a href="all_recent_book.jsp"
            class="btn btn-danger btn-sm text-white">View All</a>
    </div>

</div>
    <!--End Recent Book-->

    <hr>

    <!--Start New Book-->

    <div class="container">
        <h3 class="text-center">New Book</h3>
        <div class="row">
 

            <%
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            List<BookDTLS> list = dao.getNewBook();
            for (BookDTLS b : list) {
             %>
            }
            <div class="col-ms-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%=b.getPhotoName()%>"
                            style="width: 150px; height: 200px" class="img-thumblin">
                            <p><%=b.getBookName()%></p>
                            <p><%=b.getAuthor()%></p>
                            <p>
                                categories:<%=b.getBookCategory()%></p>
                    <div class="row">

                        <%
                        if (u == null) {
                         %>
                         <a href="login.jsp" class="btn btn-danger btn-sm mL-2">Add Cart</a>
                         <%
                        }  else {
                         %>
                         <a href="cart?bid=<%=b.getBookId()%>"
                            class="btn btn-success btn-sm mL-1"> View Details</a> <a href=""
                            class="btn btn-danger btn-sm mL-1"><%=b.getPrice()%> <i
                            class="fas fa-rupee-sign"></i></a>
                    </div>
                 </div>
            </div>
        </div>
        <%
        }
        %>

        </div>
        <div class="text-center mt-1">
            <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
                All</a>
        </div>

        <!--End New Book-->
        <hr>

        <!--Start Old Book-->

        <div class="container">
            <h3 class="text-center">Old Book</h3>
            <div class="row">


                <%
                BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
                List<BookDTLS> list3 = dao2.getOldBooks();
                    for (BookDTLS b : list3) {
                    %>
                    <div class="col-md-3">
                        <div class="card crd-ho">
                            <div class="card-body text-center">
                                <img alt="" src="book/<%b.getPhotoNmae()%>"
                                    style="width: 150px; height: 200px0" class="img-thumblin">
                                <p><%=b.getBookNmae()%></p>
                                <P><%=b.getAuthor()%></P>
                                <P><%b.getBookCategory()%</P>

                                <div class="row">
                                    <a href="view_books.jsp?bid=<%=b.getBookId()%>"
                                        class="btn btn-success btn-sm mL-5">View Details</a><a href=""
                                        class="btn btn-danger btn-sm mL-1"><%b.getprice()%><i
                                    class="fas fa-rupees-sign"></i></a>
                                </div>

                            </div>
                        </div>
                    </div>
                    <%
                    }
                    %>
            </div>
            <div class="text-center mt-1">
                <a href="all_old-book.jsp" class="btn btn-danger btn-sm text-white">view
                All</a>
            </div>

        </div>
        <!--End Old Book-->


        <%@include file="all_component/footer.jsp"%>
    </div>
    

</P>
</div>
</div> 
</div>
