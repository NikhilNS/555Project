<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>

<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gedcom","root","");
		Statement st = con.createStatement();
		
		String Fn,Ln,Sex,Fan,Mon,Sp,ComFa,ComMo;
		int FamName=1;
		Fn=request.getParameter("fn");
		Ln=request.getParameter("ln");
		Sex=request.getParameter("s");
		Fan=request.getParameter("fan");
		Mon=request.getParameter("mon");
		Sp=request.getParameter("sp");
	
		String sql = "select * from gedcom;";
	  	ResultSet rs = st.executeQuery(sql);
		int count=0;
    	while(rs.next() && Integer.parseInt(rs.getString("ID")) &lt; 5000 && Integer.parseInt(rs.getString("FamilyName")) &lt; 1000)
		{
			if(Fan.equals(rs.getString("FatherName")) && Mon.equals(rs.getString("MotherName")))
			{
				if(!(Fn.equals(rs.getString("FirstName"))))
				{
					String random=rs.getString("FamilyName");
					FamName=Integer.parseInt(random);
					break;
				}
				else
				{
					count++;
				}
				
			}
			else
			{
				FamName++;
			}
				
		
		}	
			
		Integer count1=new Integer(count);
		if(count1.equals(0))
		{		
	
				String sql2= "insert into gedcom values(null,'"+request.getParameter("fn")+"','"+request.getParameter("ln")+"','"+request.getParameter("s")+"','"+request.getParameter("fan")+"','"+request.getParameter("mon")+"',"+FamName+");";
				st.executeUpdate(sql2);
				
				response.sendRedirect("index.jsp");
				
		}

				
		else
		{
			response.sendRedirect("existing.jsp");
			
			
		}
		
		
		
		
		
		
		
	
	
%>
