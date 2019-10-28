package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dao.LoginDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	private String loginUserId;
	private String loginPassword;
	public Map<String, Object> session;

	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();
	private BuyItemDAO buyItemDAO = new BuyItemDAO();

	public String execute() {

		String result = ERROR;

//		取得したログインユーザー情報をLoginDTOに代入する
		loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);

//		loginUserの名前でloginDTOをセッションに格納する
		session.put("loginUser", loginDTO);

//		ログイン認証に成功したら商品情報を取得する
		if (((LoginDTO) session.get("loginUser")).getLoginFlg() && (loginDTO.getAdminFlg() == null)) {

			result = SUCCESS;

			BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

			session.put("login_user_id", loginDTO.getLoginId());
			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());
			session.put("item_stock", buyItemDTO.getItemStock());

			return result;
		}

		if (((LoginDTO) session.get("loginUser")).getLoginFlg() && (loginDTO.getAdminFlg() != null)) {

			result = LOGIN;

			return result;
		}

		return result;
	}

	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	@Override
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

}