package com.alt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import com.databaseconnection.DBConnectionManger;
import com.databaseoperate.DataBaseOperate;

/**
 * Servlet implementation class leaveMessage
 */
@WebServlet("/leaveMessage")
public class leaveMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public leaveMessage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		//��ȡ����
		Connection connection = null;
		//��ȡStatement
		Statement statement = null;
		//���Ա���
		String title = request.getParameter("title");
		//��������
		String message = request.getParameter("textarea");
		//��ȡ����ʱ��
		Date date = new Date();
		String time = date.toLocaleString();
		HttpSession session = request.getSession();
		//��ȡ������
		String name = (String)session.getAttribute("name1");
		DBConnectionManger jdbc = new DBConnectionManger();
		DataBaseOperate data = new DataBaseOperate();
		String sql = "insert into test values('"+name+"','"+title+"','"+message+"','"+time+"')";
		//String sql = "insert into test values('"+name+"','"+title+"','"+message+"','"+time+"')";
		data.insert(sql);
		
		/*try{
			//�������ݿ�
			DBConnectionManger dbconn = new DBConnectionManger();
			connection = dbconn.getConnection();
			statement = connection.createStatement();
			}catch (Exception e) {
				e.printStackTrace();
			}
		
		try {
			//ʵ����statement
			//statement = connection.createStatement();
			//ִ�в������
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			System.out.print("����ʧ�ܣ���");
		}	
		*/
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(" <script language='javascript'> alert('���Գɹ�');window.location.href='lookInformation.jsp'</script>");
			out.flush();
			out.close();
	}

}
