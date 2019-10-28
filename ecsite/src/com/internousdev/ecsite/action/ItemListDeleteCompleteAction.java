package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	public String execute() throws SQLException {

		ItemListDeleteCompleteDAO dao = new ItemListDeleteCompleteDAO();
		String result = ERROR;

		if (dao.itemListDelete() > 0) {
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
