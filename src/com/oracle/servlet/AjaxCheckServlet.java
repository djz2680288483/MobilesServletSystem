package com.oracle.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.oracle.mapper.TChargeMapper;
import com.oracle.mapper.TCustomerMapper;
import com.oracle.mapper.TMobileMapper;
import com.oracle.mapper.TOperatorMapper;
import com.oracle.po.TCharge;
import com.oracle.po.TChargeRule;
import com.oracle.po.TCustomer;
import com.oracle.po.TMobile;
import com.oracle.po.TOperator;

/**
 * @author 默尘
 */
public class AjaxCheckServlet extends HttpServlet {

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
		PrintWriter out = response.getWriter();
		String operator = request.getParameter("operator");
		if(operator==null||operator.trim().equals("")){
			
		}else{
			if(operator.equals("newOperator")){
				String operator_id = request.getParameter("operator_id");
				if(operator_id==null||operator_id.trim().equals("")){
					
				}else{
					SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
					SqlSession session = factory.openSession();
					//新建一个TOPerator对象
					TOperator operator1 = new TOperator();
					operator1.setOperator_id(operator_id);
					TOperatorMapper mapper = session.getMapper(TOperatorMapper.class);
					operator1 = mapper.selectOperatorById(operator1);
					session.close();
					if(operator1==null){
						out.print("ok");
						
					}else{
						out.print("not ok");
					}
					
				}
				
			}else if(operator.equals("modifyOperator")){
				String operator_id = request.getParameter("operator_id");
				if(operator_id==null||operator_id.trim().equals("")){
					
				}else{
					SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
					SqlSession session = factory.openSession();
					//新建一个TOPerator对象
					TOperator operator1 = new TOperator();
					operator1.setOperator_id(operator_id);
					TOperatorMapper mapper = session.getMapper(TOperatorMapper.class);
					operator1 = mapper.selectOperatorById(operator1);
					session.close();
					if(operator1==null){
						
					}else{
						out.print(operator1.getOperator_name()+","+operator1.getOperator_pwd()+","+operator1.getIs_admin());
					}
					
				}
				
			}else if(operator.equals("selectMobile")){
				String mobile_number = request.getParameter("mobile_number");
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				//新建一个Tmobile对象
				TMobile mobile = new TMobile();
				mobile.setMobile_number(mobile_number);
				TMobileMapper mapper = session.getMapper(TMobileMapper.class);
				mobile = mapper.selectMobileByNumber(mobile);
				session.close();
				if(mobile==null){
					out.print("ok");
				}else{
					out.print("not ok");
				}
			}else if(operator.equals("selectCharge")){
				String charge_code = request.getParameter("charge_code");
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TCharge charge = new TCharge();
				charge.setCharge_code(charge_code);
				TChargeMapper mapper = session.getMapper(TChargeMapper.class);
				charge = mapper.selectTchargeByCode(charge);
				session.close();
				out.print(charge.getCharge());
			}else if(operator.equals("selectChargeRule")){
				String charge_rule_code = request.getParameter("charge_rule_code");
				SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
				SqlSession session = factory.openSession();
				TChargeRule rule = new TChargeRule();
				rule.setFunc_id(charge_rule_code);
				TChargeMapper mapper = session.getMapper(TChargeMapper.class);
				List<TChargeRule> rules = mapper.selectChargeRule(rule);
				session.close();
				String chargeCode = "";
				for(int i=0;i<rules.size();i++){
					if(i<rules.size()-1){
						chargeCode+=rules.get(i).getCharge_code()+",";
					}else{
						chargeCode+=rules.get(i).getCharge_code();
					}
				}
				out.print(chargeCode);
			}else if(operator.equals("selectCustomer")){
				String id_type=request.getParameter("id_type");
				String id_number=request.getParameter("id_number");
				 SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
					SqlSession session = factory.openSession();
					TCustomerMapper mapper = session.getMapper(TCustomerMapper.class);
					TCustomer customer = new TCustomer();
					customer.setId_number(id_number);
					customer.setId_type(id_type);
					SimpleDateFormat sdf =new SimpleDateFormat("yyyyMMdd");
					customer=mapper.selectCustomerBytypeAndNumber(customer);
					session.close();
					if(customer!=null){
						 out.print(customer.getCustomer_id());
					}
				   
			}else if(operator.equals("selectCustomer1")){
				String id_type=request.getParameter("id_type");
				String id_number=request.getParameter("id_number");
				 SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("SqlMapConfig.xml"));
					SqlSession session = factory.openSession();
					TCustomerMapper mapper = session.getMapper(TCustomerMapper.class);
					TCustomer customer = new TCustomer();
					customer.setId_number(id_number);
					customer.setId_type(id_type);
					SimpleDateFormat sdf =new SimpleDateFormat("yyyyMMdd");
					customer=mapper.selectCustomerBytypeAndNumber(customer);
					session.close();
					if(customer!=null){
						 out.print(customer.getCustomer_name()+","+customer.getCustomer_sex()+","+customer.getCustomer_address());
					}
					}
		}
		
	}

}
