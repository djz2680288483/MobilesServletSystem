package com.oracle.servlet;

import java.io.IOException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.oracle.mapper.TChargeMapper;
import com.oracle.mapper.TCustomerMapper;
import com.oracle.mapper.TMobileMapper;
import com.oracle.mapper.TOperatorMapper;
import com.oracle.mapper.TUserMapper;
import com.oracle.po.TCharge;
import com.oracle.po.TChargeRule;
import com.oracle.po.TCustomer;
import com.oracle.po.TMobile;
import com.oracle.po.TOperator;
import com.oracle.po.TUser;

/**
 * @author 默尘
 */
public class OperatorServlet extends HttpServlet {

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
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String operator = request.getParameter("operator");
		if(operator==null||operator.trim().equals("")){
			response.sendRedirect("main.jsp");
		}else{
			if(operator.equals("addOperator")){
				String t1 = request.getParameter("T1");
				String t2 = request.getParameter("T2");
				String t3 = request.getParameter("T3");
				String r1 = request.getParameter("R1");
				TOperator operator2 = new TOperator(t1, t3, t2, r1);
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TOperatorMapper mapper = session.getMapper(TOperatorMapper.class);
				mapper.insertOperator(operator2);
				session.commit();
				session.close();
				
				response.sendRedirect("main.jsp");
			}else if(operator.equals("modifyOperator")){
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TOperatorMapper mapper = session.getMapper(TOperatorMapper.class);
				List<TOperator> operators = mapper.selectAll();
				session.commit();
				session.close();
				
				request.setAttribute("operators", operators);
				request.getRequestDispatcher("modifyOperator.jsp").forward(request, response);
			}else if(operator.equals("updateOperator")){
				String t1 = request.getParameter("T1");
				String t2 = request.getParameter("T2");
				String t3 = request.getParameter("T3");
				String r1 = request.getParameter("R1");
				TOperator operator2 = new TOperator(t1, t3, t2, r1);
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TOperatorMapper mapper = session.getMapper(TOperatorMapper.class);
				mapper.updateOperatorById(operator2);
				session.commit();
				session.close();
				HttpSession s1 = request.getSession();
				TOperator o = (TOperator)s1.getAttribute("operator");
				if(o.getOperator_id().equals(operator2.getOperator_id())){
					s1.invalidate();
					response.sendRedirect("index.jsp");
				}else{
					response.sendRedirect("main.jsp");
				}
				
			}else if(operator.equals("logout")){
				HttpSession session = request.getSession();
				session.invalidate();
				response.sendRedirect("index.jsp");
			}else if(operator.equals("addMobiles")){
				String t1 = request.getParameter("T1");
				String t2 = request.getParameter("T2");
				String r1 = request.getParameter("R1");
				long number1 = Long.parseLong(t1);
				long number2 = Long.parseLong(t2);
				
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TMobileMapper mapper = session.getMapper(TMobileMapper.class);
				for(long i=number1;i<=number2;i++){
					TMobile mobile = new TMobile(i+"", r1,i+"", "Y");
					mapper.insertMobiles(mobile);
				}
				session.commit();
				session.close();
				response.sendRedirect("main.jsp");
			}else if(operator.equals("updateCharge")){
				String d1 = request.getParameter("D1");
				String t1 = request.getParameter("T1");
				TCharge charge = new TCharge();
				charge.setCharge_code(d1);
				charge.setCharge(Double.parseDouble(t1));
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TChargeMapper mapper = session.getMapper(TChargeMapper.class);
				mapper.updateCharge(charge);
				session.commit();
				session.close();
				response.sendRedirect("main.jsp");
			}else if(operator.equals("updateChargeRule")){
				String func_id = request.getParameter("D2");
				String func_name ="";
				if(func_id.equals("O")){
					func_name="开户业务";
				}
				String[] charge_codes = request.getParameterValues("C1");
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TChargeMapper mapper = session.getMapper(TChargeMapper.class);
				TChargeRule rule = new TChargeRule();
				rule.setFunc_id(func_id);
				mapper.deleteRuleById(rule);
				
				for(int i=0;i<charge_codes.length;i++){
					rule.setCharge_code(charge_codes[i]);
					rule.setFunc_name(func_name);
					mapper.insertRule(rule);
				}
				
				session.commit();
				session.close();
				response.sendRedirect("main.jsp");
			}else if(operator.equals("operatorCustomer")){
				  String d1=request.getParameter("D1");//证件类型
			      String t1=request.getParameter("T1");//证件号
			      String t2=request.getParameter("T2");//姓名
			      String r1=request.getParameter("R1");  //性别
			      String t3=request.getParameter("T3");  //生日
			      String t4=request.getParameter("T4");  //地址
			      
			      SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
					SqlSession session = factory.openSession();
					TCustomerMapper mapper = session.getMapper(TCustomerMapper.class);
					TCustomer customer = new TCustomer();
					customer.setId_number(t1);
					customer.setId_type(d1);
					SimpleDateFormat sdf =new SimpleDateFormat("yyyyMMdd");
					customer=mapper.selectCustomerBytypeAndNumber(customer);
					if(customer==null||customer.equals("")){
						customer=new TCustomer();
						customer.setId_number(t1);
						customer.setId_type(d1);
						customer.setCustomer_address(t4);
						try {
							customer.setCustomer_birthday(sdf.parse(t3));
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						customer.setCustomer_sex(r1.equals("V1")?"男":"女");
						customer.setCustomer_name(t2);
						mapper.insertCustomer(customer);
						session.commit();
						
					}
					
					session.close();
					request.setAttribute("customer", customer);
					request.getRequestDispatcher("newUser.jsp").forward(request, response);
				
			}else if(operator.equals("addUser")){
				String t6=request.getParameter("T6");//电话号码
				String t2=request.getParameter("T2");//顾客ID
				String r1=request.getParameter("R1");//漫游状态
				String r2=request.getParameter("R2");//通话级别
				 SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
					SqlSession session = factory.openSession();
					TUserMapper mapper=session.getMapper(TUserMapper.class);
					TUser user=new TUser();
					user.setCustomer_id(Integer.parseInt(t2));
					int number=(int)(Math.random()*9000)+1000;
					user.setAccount_id(number);
					user.setMobile_number(t6);
					user.setRoaming_status(r1);
					user.setCom_level(r2);
					
					mapper.insertTUser(user);
					TMobile mobile=new TMobile();
					mobile.setMobile_number(t6);
					
					mobile.setIs_available("N");
					
					TMobileMapper mapper1=session.getMapper( TMobileMapper.class);
					mapper1.updateMobile(mobile);
					session.commit();
					session.close();
					response.sendRedirect("saveInfo.jsp");
			}
			//else if(operator.equals("selectCustomer")){
//				TCustomer customer=(TCustomer)request.getAttribute("customer");
//				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
//				SqlSession session = factory.openSession();
//				TCustomerMapper mapper=session.getMapper(TCustomerMapper.class);
//				customer=mapper.selectCustomerBytypeAndNumber(customer);
//				
//				session.close();
//			}
			
		}
		
	}

}
