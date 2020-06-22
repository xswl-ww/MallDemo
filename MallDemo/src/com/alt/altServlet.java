package com.alt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.databaseconnection.DBConnectionManger;
import com.databaseoperate.DataBaseOperate;

/**
 * Servlet implementation class altServlet
 */
@WebServlet("/altServlet")
public class altServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public altServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		boolean is = false;
		String oldName = (String)session.getAttribute("name1");
		System.out.print(oldName);
	    String name = request.getParameter("altName");
	   	String password = request.getParameter("altPassword");
	   	String confirmPassword = request.getParameter("confirmAltPassword");
	   	String realName = request.getParameter("altRealName");
	   	String phoneNum = request.getParameter("altPhoneNum");
	   	String email = request.getParameter("altEmail");
	   	String address =request.getParameter("altAddress");
		//连接数据库
	    DBConnectionManger jdbc = new DBConnectionManger();
	    		//对数据库进行操作
	    	DataBaseOperate data = new DataBaseOperate();
	    		//获取查看信息的用户名
	    	String sql = "select userName from My_users ";
	    	ResultSet result = data.query(sql);
	    	boolean istrue = false;
	    	try {
				while(result.next()) {
				String selectName = result.getString(1);
				if(selectName.equals(name)) {
				istrue = true;
				break;
				  }
				}
			} catch (SQLException e) {
				
			}
	    	
	    	System.out.print(istrue);
	    	if(istrue == true) {
	    		System.out.print("错误");
	    	request.setAttribute("mgs", "用户名重复，请重新更改");
	    	request.getRequestDispatcher("alt.jsp").forward(request, response);
	    	return;
	 	} else {
	 	//String sql1 = "select*from where userName='"+oldName+"'";
	 	//ResultSet re = data.query(sql1);
	 		
	 		if(password.equals(confirmPassword)) {
	 	String sqlAddress = "update My_users set address='"+address+"' where userName='"+oldName+"'";
	 	String sqlEmail = "update My_users set email='"+email+"' where userName='"+oldName+"'";
	 	String sqlPhoneNum = "update My_users set phone='"+phoneNum+"' where userName='"+oldName+"'";
	 	String sqlRealName = "update My_users set realName='"+realName+"' where userName='"+oldName+"'";
	 	String sqlPassword = "update My_users set password='"+password+"' where userName='"+oldName+"'";
	 	String sqlName = "update My_users set userName='"+name+"' where userName='"+oldName+"'";
	 		data.update(sqlAddress);
	 		data.update(sqlEmail);
	 		data.update(sqlPhoneNum);
	 		data.update(sqlRealName);
	 		data.update(sqlPassword);
	 		data.update(sqlName);
	 		is = true;
	 		
	 		}
	 	}
	    	if(is == true) {
	    		response.setContentType("text/html;charset=utf-8");
	    		PrintWriter out = response.getWriter();
	    		out.println(" <script language='javascript'> alert('修改成功');window.location.href='login.jsp'</script>");
	    			out.flush();
	    			out.close();
	    	}
	}

}
