<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<% 


    String username=request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conect = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "");
       Statement stud = conect.createStatement();
       ResultSet rs = stud.executeQuery("select * from studentinfo where username='" + username + "' and password='" + password + "'");
       if(rs.next()) {
           response.sendRedirect("HelloWorld.jsp");
       }
       
       else{
                      
           response.sendRedirect("index.jsp");
           
           
                      
           
       }
    }
catch (Exception e) {
    out.println(e);
}



%>