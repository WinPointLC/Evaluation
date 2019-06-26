package com.winpoint.oes.beans;

public class UserProfile {
	private String userID;
	private String fName;
	private String lName;
	private String email;
	private String mobNo;
	private String address;
	private String bday;
	private String college;
	private String yearOfGrad;
	private String degree;
	private String branch;
	private String password;
	private String securityQuestionID;
	private String securityAnswer;
	private String userCategoryID;
	private String occupation;
	private String organisation;
	private String designation;
	private String function;
	private String role;
	private String experience;
	private String createdBy;
	private String createDate;
	
	

	
	public UserProfile(String userID, String fName, String lName, String email, String mobNo, String address,
			String bday, String college, String yearOfGrad, String degree, String branch, String password,
			String securityQuestionID, String securityAnswer, String userCategoryID, String occupation,
			String organisation, String designation, String function, String role, String experience, String createdBy,
			String createDate) {
		super();
		this.userID = userID;
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.mobNo = mobNo;
		this.address = address;
		this.bday = bday;
		this.college = college;
		this.yearOfGrad = yearOfGrad;
		this.degree = degree;
		this.branch = branch;
		this.password = password;
		this.securityQuestionID = securityQuestionID;
		this.securityAnswer = securityAnswer;
		this.userCategoryID = userCategoryID;
		this.occupation = occupation;
		this.organisation = organisation;
		this.designation = designation;
		this.function = function;
		this.role = role;
		this.experience = experience;
		this.createdBy = createdBy;
		this.createDate = createDate;
		
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobNo() {
		return mobNo;
	}
	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBday() {
		return bday;
	}
	public void setBday(String bday) {
		this.bday = bday;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getYearOfGrad() {
		return yearOfGrad;
	}
	public void setYearOfGrad(String yearOfGrad) {
		this.yearOfGrad = yearOfGrad;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSecurityQuestionID() {
		return securityQuestionID;
	}
	public void setSecurityQuestionID(String securityQuestionID) {
		this.securityQuestionID = securityQuestionID;
	}
	public String getSecurityAnswer() {
		return securityAnswer;
	}
	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer = securityAnswer;
	}
	public String getUserCategoryID() {
		return userCategoryID;
	}
	public void setUserCategoryID(String userCategoryID) {
		this.userCategoryID = userCategoryID;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getOrganisation() {
		return organisation;
	}
	public void setOrganisation(String organisation) {
		this.organisation = organisation;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getFunction() {
		return function;
	}
	public void setFunction(String function) {
		this.function = function;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}	
}
