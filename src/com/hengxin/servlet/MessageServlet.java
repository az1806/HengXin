package com.hengxin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.GeneralDao;
import com.dao.MessageDao;
import com.dao.impl.GeneralDaoImpl;
import com.dao.impl.MessageDaoImpl;
import com.hengxin.entil.General;
import com.hengxin.entil.Message;

public class MessageServlet extends HttpServlet {

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
		response.setCharacterEncoding("utf-8");
		
		GeneralDao comDao = new GeneralDaoImpl();
		General com = comDao.queryGeneral();
		request.setAttribute("General", com);
		
		 String msgname =request.getParameter("msgname");
		 String msgphone=request.getParameter("msgphone");
		 String msgemail=request.getParameter("msgemail");
		 String msgadress=request.getParameter("msgadress");
		 String msgdesc=request.getParameter("msgdesc");
		 MessageDao ud = new MessageDaoImpl();
		 ud.add(msgname,msgphone,msgemail,msgadress,msgdesc);
		 request.getRequestDispatcher("/message.jsp").forward(request, response);
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
		doGet(request, response);
		
	}

}
