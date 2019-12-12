package controller;

import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.Sp;
import model.porder;

public class deleteAction extends ActionSupport{
	private int id;
	
	public String execute() throws Exception{
		ApplicationContext ac = new ClassPathXmlApplicationContext("sp1.xml");
		Sp sp = (Sp) ac.getBean("sp1");
		Map<String, Object> session = ActionContext.getContext().getSession();
		
		porder[] p = (porder[])session.get("order");
		sp.getPorderDAO().deleteObject(p[id].getId());
		
		return SUCCESS;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	

}
