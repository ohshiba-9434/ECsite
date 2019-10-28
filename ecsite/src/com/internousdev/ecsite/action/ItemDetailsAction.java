package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemDetailsDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemDetailsAction extends ActionSupport implements SessionAware {

	private String id;
	private ItemInfoDTO itemDetailsDTO;
	private Map<String, Object> session;

	public String execute() throws SQLException {

//		選択されたidを元に必要な情報を取り出す
		ItemDetailsDAO dao = new ItemDetailsDAO();
		itemDetailsDTO = dao.getItemInfo(id);

//		"商品の詳細情報はありません。"を表示させる
		if (itemDetailsDTO.getItemName() == null) {
			itemDetailsDTO = null;
		}

		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public ItemInfoDTO getItemDetailsDTO() {
		return itemDetailsDTO;
	}

	public void setItemDetailsDTO(ItemInfoDTO itemDetailsDTO) {
		this.itemDetailsDTO = itemDetailsDTO;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
