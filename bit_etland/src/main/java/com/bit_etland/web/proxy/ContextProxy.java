package com.bit_etland.web.proxy;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.SessionAttributes;

@Component
@SessionAttributes({"ctx","css","js","img","time"})
public class ContextProxy {
	@Autowired HttpServletRequest  request;
	@Autowired HttpSession session;
	
	public void setContext() {
		String ctx = request.getContextPath();
		session.setAttribute("ctx",ctx);
		session.setAttribute("css", ctx + "/resources/css/");
		session.setAttribute("js", ctx + "/resources/js/");
		session.setAttribute("img", ctx + "/resources/img/");
		session.setAttribute("time", new SimpleDateFormat("yyyy년-MM월-dd일 hh:mm:ss").format(new Date()));
	}
}
