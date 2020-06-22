package com.servlet;
import com.databaseoperate.DataBaseOperate;
import com.databaseconnection.DBConnectionManger;
import com.po.Users;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super(); 
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
    	//Users user =new Users();
    	//��ȡ��¼��
    	String userName =request.getParameter("username");
    	//��ȡ��¼����
    	String password  =request.getParameter("password");
       // user.setUsername(username);
        //user.setPassword(password);
    	//�������ݿ�
    	
        DBConnectionManger dbjc = new DBConnectionManger();
    	
    	//�����ݿ��в������ݣ��Ա��û���������
    	DataBaseOperate data= new DataBaseOperate();
		String sql = "select* from My_Users where userName="+"'"+userName+"'";
		//��ѯ�����
		ResultSet result = data.query(sql);
		try {
			if(result.next() == true) {
				String password1 = result.getString(2);
				
				if(password.equals(password1)) {
					HttpSession session = request.getSession();
					//�����û���¼��
					session.setAttribute("name1", userName);
					/*request.setAttribute("name", userName);
					String s= (String)session.getAttribute("name1");
					System.out.print(s);
					System.out.print(request.getAttribute("name"));
					*/
					request.getRequestDispatcher("indexPerson.jsp").forward(request,response);
				return;
				}else{
					//���������Ϣ
					request.setAttribute("mgs", "�û������������");
					//���ص�¼����
					//response.sendRedirect("/bigHomework/business/login.jsp");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
				
			}else{
				//���������Ϣ
				request.setAttribute("mgs", "�û��������ڣ���ע�ᣡ");
				//���ص�¼����
				//response.sendRedirect("/bigHomework/business/login.jsp");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
}
    	
       
}
