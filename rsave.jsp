<%@page import="java.sql.*"%>
<%



try{
	String name,cnumber,email,password,rpassword;
	name=request.getParameter("name");
	cnumber=request.getParameter("cnumber");
	email=request.getParameter("email");
	password=request.getParameter("password");
	//rpassword=request.getParameter("rpassword");

    //step1:register Driver class
	Class.forName("com.mysql.jdbc.Driver");
  //step2 create connection-->
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useTimezone=true&serverTimezone=UTC","root","");
	//step3 prepare statement
	PreparedStatement ps=con.prepareStatement("insert into register (name,cnumber,email,password) values(?,?,?,?);");
	ps.setString(1,name);
	ps.setString(2,cnumber);
	ps.setString(3,email);
	ps.setString(4,password);
	//ps.setString(5,rpassword);
	//step execute query
	int x=ps.executeUpdate();
	if(x==1)
		out.println("record saved");
	else
		out.println("failed");
	//step 5 close connection
	con.close();
	}



catch(Exception e){
  out.println(e.getMessage());

}

%>