package com.hengxin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GeneralDao;
import com.dao.NewsDao;
import com.dao.NewstypeDao;
import com.dao.impl.GeneralDaoImpl;
import com.dao.impl.NewsDaoImpl;
import com.dao.impl.NewstypeDaoImpl;
import com.hengxin.entil.General;
import com.hengxin.entil.News;
import com.hengxin.entil.Newstype;

public class Article_list_moreServlet extends HttpServlet {

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
		System.out.println("½øÈë GoodstypeServlet");
		GeneralDao comDao = new GeneralDaoImpl();
		General com = comDao.queryGeneral();
		request.setAttribute("General", com);
		
		NewstypeDao gdd = new NewstypeDaoImpl();
		List<Newstype> gds= gdd.queryNewstypes();
		int type;
		if(request.getParameter("type") == null){
			type = gds.get(0).getNewstypeid();
		}else{
			type = Integer.parseInt(request.getParameter("type"));
		}
		NewsDao gdsDao =new NewsDaoImpl();
		List<News> glist = gdsDao.queryNewstype(2);
		request.setAttribute("glist", glist);
		
		request.setAttribute("gds", gds);
		
		request.getRequestDispatcher("/article_list_more.jsp").forward(request, response);
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
