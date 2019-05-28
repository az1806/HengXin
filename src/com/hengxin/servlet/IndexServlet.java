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
import com.dao.NewsDao;
import com.dao.NewstypeDao;
import com.dao.impl.GeneralDaoImpl;
import com.dao.impl.GoodsDaoImpl;
import com.dao.impl.GoodstypeDaoImpl;
import com.dao.impl.NewsDaoImpl;
import com.dao.impl.NewstypeDaoImpl;
import com.hengxin.entil.General;
import com.hengxin.entil.Goods;
import com.hengxin.entil.Goodstype;
import com.hengxin.entil.News;
import com.hengxin.entil.Newstype;

public class IndexServlet extends HttpServlet {

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

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		GeneralDao comDao = new GeneralDaoImpl();
		General com = comDao.queryGeneral();
		request.setAttribute("General", com);

		GoodstypeDao gdd = new GoodstypeDaoImpl();
		List<Goodstype> gds= gdd.queryGoodstypes();
		int type;
		if(request.getParameter("type") == null){
			type = gds.get(0).getGdstypeid();
		}else{
			type = Integer.parseInt(request.getParameter("type"));
		}
		GoodsDao gdsDao =new GoodsDaoImpl();
		List<Goods> glist = gdsDao.queryGoodstype(type);
		request.setAttribute("glist", glist);
		request.setAttribute("gds", gds);

		NewstypeDao nw = new NewstypeDaoImpl();
		List<Newstype> nws= nw.queryNewstypes();
		int type1;
		if(request.getParameter("type1") == null){
			type1 = nws.get(0).getNewstypeid();
		}else{
			type1 = Integer.parseInt(request.getParameter("type1"));
		}
		NewsDao nwsDao =new NewsDaoImpl();
		List<News> nlist = nwsDao.queryNewstype(type1);
		request.setAttribute("nlist", nlist);
		
		request.setAttribute("nws", nws);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
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
