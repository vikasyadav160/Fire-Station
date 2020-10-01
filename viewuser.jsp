<%@page import="java.sql.*"%>
<% 
try{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useTimezone=true&serverTimezone=UTC","root","");
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery("select *from Select_Item");
		out.println("<TABLE border='1'>");
		out.println("<TR><TH>Item name</TH><TH>Man Date</TH><TH>Exp Date</TH><TH>Number of items</TH></TR>");
		while(rs.next())
		{
			out.println("<TR><TD>");
			out.println(rs.getString(1));
			out.println("</TD><TD>");
			out.println(rs.getString(2));
			out.println("</TD><TD>");
			out.println(rs.getString(3));
			out.println("</TD><TD align='center'>");
			out.println(rs.getString(4));
			out.println("</TD></TR>");
		}
		out.println("</TABLE>");
		con.close();

}
catch(Exception e)
{
	out.println(e.getMessage());
}

%>