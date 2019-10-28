package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	private int count;
	private String pay;
	private String errorMessage;

	public String execute() {

		String result;

//		countの名前で変数countを格納する
		session.put("count", count);

//		取得した値をString型に変換した上でint型に変換する
		int intCount = Integer.parseInt(session.get("count").toString());
		int intPrice = Integer.parseInt(session.get("buyItem_price").toString());

//		商品在庫の判定
		if (Integer.parseInt(session.get("item_stock").toString()) < intCount) {

			setErrorMessage("在庫がありません。");

			result = ERROR;

		} else {

			result = SUCCESS;

			session.put("total_price", intCount * intPrice);

			String payment;

			if (pay.equals("1")) {
				payment = "現金払い";
				session.put("pay", payment);
			} else {
				payment = "クレジットカード";
				session.put("pay", payment);
			}

		}
		return result;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
