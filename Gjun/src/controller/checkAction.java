package controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class checkAction extends ActionSupport{
	private String logout;
	
	public String execute() throws Exception{
		if (logout == null) {
			return SUCCESS;
		}
		else {
			Map session = ActionContext.getContext().getSession();
			session.remove("M");
			
			return ERROR;
		}
	}

	public String getLogout() {
		return logout;
	}

	public void setLogout(String logout) {
		this.logout = logout;
	}
	
	

}
