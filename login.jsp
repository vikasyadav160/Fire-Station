<%@page import="java.sql.*"%>
<%
try
{
	String uname,pass;
	int flag=0;
	uname=request.getParameter("t1");
	pass=request.getParameter("t2");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useTimezone=true&serverTimezone=UTC","root","");
	Statement smt=con.createStatement();
	ResultSet rs=smt.executeQuery("select * from register;");
	while(rs.next())
	{
			if(uname.equals(rs.getString(3))&&pass.equals(rs.getString(4)))
			{
				flag=1;
				//out.println("login successfull");
			}
		
	}
	
	con.close();
	
	       if(flag==1)
		   {
			out.println("LogIn Successfull");
		   }
		   else
		   {
			out.println("LogIn Failed");
		   }
		   
	}

catch(Exception e)
{
	out.println(e.getMessage());
}
%>