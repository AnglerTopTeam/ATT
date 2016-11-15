package com.gmail.lkj161226.entities;

import org.springframework.stereotype.Component;

@Component
public class Member {
		private String id;
		private String name;
		private String nickname;
		private String password;
		private String phone;
		private String email;
		private String inputdate;
		private int memberlevel;
		private int point;
		private int cash;
		
		
		
		
		
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getNickname() {
			return nickname;
		}
		public void setNickname(String nicname) {
			this.nickname = nicname;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getInputdate() {
			return inputdate;
		}
		public void setInputdate(String inputdate) {
			this.inputdate = inputdate;
		}
		
		public int getMemberlevel() {
			return memberlevel;
		}
		public void setMemberlevel(int memberlevel) {
			this.memberlevel = memberlevel;
		}
		public int getPoint() {
			return point;
		}
		public void setPoint(int point) {
			this.point = point;
		}
		public int getCash() {
			return cash;
		}
		public void setCash(int cash) {
			this.cash = cash;
		}
		
}
