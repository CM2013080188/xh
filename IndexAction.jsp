<%@page import="com.xietong.software.crm.ConfirmStat8"%>
<%@page import="com.xietong.software.crm.ConfirmStat7"%>
<%@page import="com.xietong.software.crm.ConfirmStat3"%>
<%@page import="com.xietong.software.crm.ConfirmStat2"%>
<%@page import="com.xietong.software.law.ServerCountStat"%>
<%@page import="com.xietong.software.crm.ConfirmStat5"%>
<%@page import="com.xietong.software.crm.ConfirmStat6"%>
<%@page import="com.xietong.software.util.ParamUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setHeader("Cache-Control", "no-cache, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	String cmd=ParamUtils.getParameter(request, "cmd", "");
	if(cmd.equals("wrrl1")){
		ConfirmStat2 cs=new ConfirmStat2();
		String str=cs.getHtml(request,1);
		out.print(str);
		return;
	}if(cmd.equals("wrrlnew")){
		ConfirmStat6 cs=new ConfirmStat6();
		String str=cs.getHtml(request,1);
		out.print(str);
		return;
	}else if(cmd.equals("sjbdnew")){
		ConfirmStat5 cs=new ConfirmStat5();
		System.out.println("cs============"+cs);
		String str=cs.getHtml(request);
		out.print(str);
		return;
	}else if(cmd.equals("sjbd")){
		ConfirmStat3 cs=new ConfirmStat3();
		String str=cs.getHtml(request,1);
		out.print(str);
		return;
	}else if(cmd.equals("fwtj1")){
		ServerCountStat sc=new ServerCountStat();
		String str=sc.getHtml(request,1);
		out.print(str);
		return;
	}
	else if(cmd.equals("rwzt")){//任务状态统计报表
		ServerCountStat sc=new ServerCountStat();
		String str=sc.getrwztHtml(request,1);
		out.print(str);
		return;
	}
	else if(cmd.equals("dszxpt")){//电商直销平台续保率
		ConfirmStat7 sc=new ConfirmStat7();
		String str=sc.getHtml(request,1);
		out.print(str);
		return;
	}
	
	else if(cmd.equals("ptxb1")){//效益险种(月，年）统计
		ConfirmStat8 sc=new ConfirmStat8();
		String str=sc.getHtml(request,1);
		out.print(str);
		return;
	}
%>