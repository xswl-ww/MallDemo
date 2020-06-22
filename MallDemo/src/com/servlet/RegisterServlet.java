package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;

import com.databaseconnection.DBConnectionManger;
import com.databaseoperate.DataBaseOperate;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//��ȡע���û���
		String oUsername = request.getParameter("username");
		//��ȡע������
		String oPassword = request.getParameter("password");
		//ȷ��ע������
		String oConfirm_password = request.getParameter("confirm_password");
		//��ȡ�û���ʵ����
		String oRealName = request.getParameter("realName");
		//��ȡ�û��ֻ���
		String oPhone_number = request.getParameter("phone_number");
		//��ȡ�û�ע��������ַ
		String oEmail = request.getParameter("email");
		//��ȡ�û����ջ���ַ
		String oAddress = request.getParameter("address");
		//�������ݿ�
		DBConnectionManger dbjc = new DBConnectionManger();
		//�����ݿ���в������
		//System.out.print("ִ��");
		String sql1 = "select*from My_users where userName='"+oUsername+"'";
		String sql = "insert into My_users values('"+oUsername+"','"+oPassword+"','"+oRealName+"','"+oPhone_number+"','"+oEmail+"','"+oAddress+"')";
		DataBaseOperate data = new DataBaseOperate();
		ResultSet result = data.query(sql1);
		try {
			if( result.next() == true ) {
				request.setCharacterEncoding("utf-8");
			    response.setContentType("text/html;charset=utf-8");
			    response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				out.println(" <script type='text/javascript'> alert('�û����Ѵ��ڣ�')</script>");
				out.println("</HTML>");
				out.flush();
				out.close();
				request.getRequestDispatcher("register.jsp").forward(request, response);
				return;
			}
		} catch (SQLException e) {
			
			System.out.println("ע��ʧ��");
		}
		
		if(oUsername != ""&&oPassword.equals(oConfirm_password)) {
		
		data.insert(sql);
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(" <script type='text/javascript'> alert('ע��ɹ�')</script>");
		out.println("</HTML>");
		out.flush();
		out.close();
		response.sendRedirect("login.jsp");
	}else {
		request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(" <script type='text/javascript'> alert('kong')</script>");
		out.println("</HTML>");
		out.flush();
		out.close();
		
	}
	
	
	
	}

}
