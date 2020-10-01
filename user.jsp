<%@page import="java.sql.*"%>
<% 
try{
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useTimezone=true&serverTimezone=UTC","root","");
		Statement smt=con.createStatement();
		ResultSet rs=smt.executeQuery("select *from fire_station_list");
		out.println("<TABLE border='1'>");
		out.println("<TR><TH>S.NO</TH><TH>Distict</TH><TH>Fire Station Name</TH><TH>Email</TH><TH>Contact</TH></TR>");
		while(rs.next())
		{
			out.println("<TR><TD>");
			out.println(rs.getString(1));
			out.println("</TD><TD>");
			out.println(rs.getString(2));
			out.println("</TD><TD>");
			out.println(rs.getString(3));
			out.println("</TD><TD>");
			out.println(rs.getString(4));
			out.println("</TD><TD>");
			out.println(rs.getString(5));
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