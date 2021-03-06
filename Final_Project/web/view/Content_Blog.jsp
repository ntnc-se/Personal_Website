<%-- 
    Document   : Content_Blog
    Created on : Jul 7, 2020, 4:51:40 PM
    Author     : __ntnc__ 
--%>

<%@page import="model.Post"%>
<%@page import="dal.PostDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>__ntnc__</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha3840iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../css/content.css">
    </head>
    <body>
        <header>
            <p class="name">NTNC.</p>	
        </header>

        <main class="content">
            <nav>
                <a href="../view/About_Me.jsp">About me</a>
                <a href="">Blog</a>
                <a href="../view/Travel.jsp">Travel</a>
                <a href="../view/Work.jsp">Work</a>
                <a href="../view/Home.jsp">Home</a>
            </nav>

            <%
                if (request.getParameter("id") != null) {
                    String id = request.getParameter("id");
                    PostDAO pd = new PostDAO();
                    Post p = pd.getPostByID(id);
                    String date = p.getDate();
                    String name = p.getName();
            %>     
            <div style="padding-top: 6%;">
                <h3 style="padding-left: 15%;"><%=name%></h3>
                <%=p.getContent()%>
            </div>
            <i style="float: right;margin-right: 15%;">Signature, NTNC. <%=date%></i>
            <%}%>

        </main>
            
            
        <footer class="footer">
            <!--            <p>
                            This page was created by Nguyen Thuc Nguyen Chuong. To learn more about web design, visit
                            <a href="http://www.intro-webdesign.com">Intro to Web Design</a>
                        </p>-->
            <br/>
            <hr style="border: 1px solid grey;">
            <a href="https://twitter.com/ChuongThuc" target="_blank"><img alt="Twitter icon" src="../images/Home/twitter.png" class="icons"></a>
            <a href="https://www.instagram.com/__chowng__/" target="_blank"><img alt="Instagram icon" src="../images/Home/instagram.png" class="icons"></a>
            <a href="mailto:chuongntnhe141612@fpt.edu.vn" target="_blank"><img alt="Gmail icon" src="../images/Home/gmail.png" class="icons"></a>
            <a href="https://www.linkedin.com/in/chuong-nguyen-4238ab187/" target="_blank"><img alt="Linkedin icon" src="../images/Home/linkedin.png" class="icons"></a>
            <a href="https://www.facebook.com/iamntnc" target="_blank"><img alt="Facebook icon" src="../images/Home/facebook.png" class="icons"></a>
            <p style="text-align: left;padding: 5px;">         
                + Phone: 0916 898 775<br/>
                + Address: FPT University, Hoa Lac, Hoa Son Binh, Vietnam<br/>
                + Mail: ntnc.2k@gmail.com
            </p>
            <p style="text-align: center;">
                Copyright &copy; 2020 All Rights Reserved by NTNC.
            </p>
        </footer>
    </body>
</html>
