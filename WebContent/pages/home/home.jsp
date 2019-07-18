<%@page import="java.sql.*"%>

<%
Connection con=null;

ResultSet rs=null;
Statement stmt=null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
 	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger"); 	 
stmt=con.createStatement();
String sql ="select score from score where score_id = 1";
rs= stmt.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("score") %></td>
<td><%=rs.getString("Department") %></td>
<td><%=rs.getString("Designation") %></td>
<td><%=rs.getString("emp_id") %></td>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>