<%
 String n=request.getParameter("name");
 out.println(n);
 out.println("<form method='get' action='file2.jsp'>");
 out.println("<input type='hidden' name='name' value='"+n+"'>");
 out.println("<input type='submit' value='next page'>");
 out.println("</form>");
%>