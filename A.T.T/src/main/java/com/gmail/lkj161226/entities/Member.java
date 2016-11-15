package com.gmail.lkj161226.entities;

import org.springframework.stereotype.Component;

@Component
public class Member {
		private String id;
		private String name;
		private String nicname;
		private String password;
		private String phone1;
		private String phone2;
		private String phone3;
		private String email;
		private String inputdate;
		private String job;
		private int memberlevel;
		private int point;
		private int cash;
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
		public String getNicname() {
			return nicname;
		}
		public void setNicname(String nicname) {
			this.nicname = nicname;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		public String getPhone1() {
			return phone1;
		}
		public void setPhone1(String phone1) {
			this.phone1 = phone1;
		}
		public String getPhone2() {
			return phone2;
		}
		public void setPhone2(String phone2) {
			this.phone2 = phone2;
		}
		public String getPhone3() {
			return phone3;
		}
		public void setPhone3(String phone3) {
			this.phone3 = phone3;
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
		public String getJob() {
			return job;
		}
		public void setJob(String job) {
			this.job = job;
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
