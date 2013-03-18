<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	response.addHeader("Cache-Control","no-cache");
	response.addHeader("Expires", "-1");
	response.addHeader("Pragma", "no-cache");

    try
    {
    	String home = System.getProperty("user.home");
    	out.println(new java.io.File(home).getPath());
    	java.io.File file = new java.io.File("/home/hostingjava.it/hahamiru"+"/test.txt");
    	java.io.FileOutputStream fos = new java.io.FileOutputStream(file);
    	fos.write(97);
    	fos.close();
    }
    catch (Exception e) {
    	e.printStackTrace();
    	out.println(e.getMessage());
    }
%>