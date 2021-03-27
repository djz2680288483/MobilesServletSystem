package com.oracle.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.oracle.mapper.TOperatorMapper;
import com.oracle.po.TOperator;

/**
 * @author 默尘
 */
public class CheckServlet extends HttpServlet {

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获取请求参数
		String operator_id = request.getParameter("operator_id");
		String operator_pwd = request.getParameter("operator_pwd");
		if(operator_id==null||operator_pwd==null){
			request.setAttribute("error", "请登录");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}else if (operator_id.trim().equals("")||operator_pwd.trim().equals("")) {
			request.setAttribute("error", "用户名或密码不能为空");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}else{
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
			SqlSession session = factory.openSession();
			//新建一个TOPerator对象
			TOperator operator = new TOperator();
			operator.setOperator_id(operator_id);
			TOperatorMapper mapper = session.getMapper(TOperatorMapper.class);
			operator = mapper.selectOperatorById(operator);
			session.close();
			
			if(operator==null){
				request.setAttribute("error", "用户名不存在");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				return;
				
			}else{
				if(operator_pwd.equals(operator.getOperator_pwd())){
					HttpSession s1 = request.getSession();
					s1.setAttribute("operator", operator);
					response.sendRedirect("main.jsp");
				}else{
					request.setAttribute("error", "密码不正确");
					request.getRequestDispatcher("index.jsp").forward(request, response);
					return;
				}
				
			}
			
		}
		
	}

}
