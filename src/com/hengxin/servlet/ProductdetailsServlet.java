package com.hengxin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GeneralDao;
import com.dao.GoodsDao;
import com.dao.GoodstypeDao;
import com.dao.impl.GeneralDaoImpl;
import com.dao.impl.GoodsDaoImpl;
import com.dao.impl.GoodstypeDaoImpl;
import com.hengxin.entil.General;
import com.hengxin.entil.Goods;
import com.hengxin.entil.Goodstype;

public class ProductdetailsServlet extends HttpServlet {

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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		System.out.println("Ω¯»ÎProductdetailsServlet");
		GeneralDao comDao = new GeneralDaoImpl();
		General com = comDao.queryGeneral();
		request.setAttribute("General", com);
		
		GoodstypeDao gdd = new GoodstypeDaoImpl();
		List<Goodstype> gds= gdd.queryGoodstypes();
		GoodsDao gdsDao =new GoodsDaoImpl();
		List<Goods> glista = gdsDao.queryGoods();
		
		String like;
		if(request.getParameter("like") == null ){
			like = glista.get(0).getGdsname();
		}else{
			like =(String) request.getAttribute("like");
		}
		int type;
		if(request.getParameter("type") == null){
			type = glista.get(0).getGdsid();
		}else{
			type = Integer.parseInt(request.getParameter("type"));
		}
		List<Goods> glist = gdsDao.queryGoodstype(type);
		List<Goods> likea = gdsDao.queryGoodslike(like);
		request.setAttribute("glist", glist);
		request.setAttribute("glista", glista);
		request.setAttribute("gds", gds);
		request.setAttribute("likea", likea);
		request.getRequestDispatcher("/productdetails.jsp").forward(request, response);
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
