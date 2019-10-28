package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	public String execute() throws SQLException {

		UserListDeleteCompleteDAO dao = new UserListDeleteCompleteDAO();
		String result = ERROR;

		if (dao.userListDelete() > 0) {
			result = SUCCESS;
		}

		return result;

	}

	public Map<String, Object> getSession() {
		return this.session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
