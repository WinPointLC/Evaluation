package com.winpoint.oes.beans;

import com.winpoint.oes.dao.LoginDao;

public class UserProfile {
	private String userID;
	private String firstName;
	private String lastName;
	private String email;
	private String mobileNumber;
	private String address;
	private String birthDate;
	private String college;
	private String yearOfGraduation;
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
	
	
	
	/**
	 * @param userID
	 * @param firstName
	 * @param lastName
	 * @param email
	 * @param mobileNumber
	 * @param address
	 * @param birthDate
	 * @param college
	 * @param yearOfGraduation
	 * @param degree
	 * @param branch
	 * @param password
	 * @param securityQuestionID
	 * @param securityAnswer
	 * @param userCategoryID
	 * @param occupation
	 * @param organisation
	 * @param designation
	 * @param function
	 * @param role
	 * @param experience
	 * @param createdBy
	 * @param createDate
	 */
	public UserProfile(String userID, String firstName, String lastName, String email, String mobileNumber,
			String address, String birthDate, String college, String yearOfGraduation, String degree, String branch,
			String password, String securityQuestionID, String securityAnswer, String userCategoryID, String occupation,
			String organisation, String designation, String function, String role, String experience, String createdBy,
			String createDate) {
		super();
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.address = address;
		this.birthDate = birthDate;
		this.college = college;
		this.yearOfGraduation = yearOfGraduation;
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



	/**
	 * @return the userID
	 */
	public String getUserID() {
		return userID;
	}



	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		this.userID = userID;
	}



	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}



	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}



	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}



	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}



	/**
	 * @return the mobileNumber
	 */
	public String getMobileNumber() {
		return mobileNumber;
	}



	/**
	 * @param mobileNumber the mobileNumber to set
	 */
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}



	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}



	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}



	/**
	 * @return the birthDate
	 */
	public String getBirthDate() {
		return birthDate;
	}



	/**
	 * @param birthDate the birthDate to set
	 */
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}



	/**
	 * @return the college
	 */
	public String getCollege() {
		return college;
	}



	/**
	 * @param college the college to set
	 */
	public void setCollege(String college) {
		this.college = college;
	}



	/**
	 * @return the yearOfGraduation
	 */
	public String getYearOfGraduation() {
		return yearOfGraduation;
	}



	/**
	 * @param yearOfGraduation the yearOfGraduation to set
	 */
	public void setYearOfGraduation(String yearOfGraduation) {
		this.yearOfGraduation = yearOfGraduation;
	}



	/**
	 * @return the degree
	 */
	public String getDegree() {
		return degree;
	}



	/**
	 * @param degree the degree to set
	 */
	public void setDegree(String degree) {
		this.degree = degree;
	}



	/**
	 * @return the branch
	 */
	public String getBranch() {
		return branch;
	}



	/**
	 * @param branch the branch to set
	 */
	public void setBranch(String branch) {
		this.branch = branch;
	}



	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}



	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}



	/**
	 * @return the securityQuestionID
	 */
	public String getSecurityQuestionID() {
		return securityQuestionID;
	}



	/**
	 * @param securityQuestionID the securityQuestionID to set
	 */
	public void setSecurityQuestionID(String securityQuestionID) {
		this.securityQuestionID = securityQuestionID;
	}



	/**
	 * @return the securityAnswer
	 */
	public String getSecurityAnswer() {
		return securityAnswer;
	}



	/**
	 * @param securityAnswer the securityAnswer to set
	 */
	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer = securityAnswer;
	}



	/**
	 * @return the userCategoryID
	 */
	public String getUserCategoryID() {
		return userCategoryID;
	}



	/**
	 * @param userCategoryID the userCategoryID to set
	 */
	public void setUserCategoryID(String userCategoryID) {
		this.userCategoryID = userCategoryID;
	}



	/**
	 * @return the occupation
	 */
	public String getOccupation() {
		return occupation;
	}



	/**
	 * @param occupation the occupation to set
	 */
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}



	/**
	 * @return the organisation
	 */
	public String getOrganisation() {
		return organisation;
	}



	/**
	 * @param organisation the organisation to set
	 */
	public void setOrganisation(String organisation) {
		this.organisation = organisation;
	}



	/**
	 * @return the designation
	 */
	public String getDesignation() {
		return designation;
	}



	/**
	 * @param designation the designation to set
	 */
	public void setDesignation(String designation) {
		this.designation = designation;
	}



	/**
	 * @return the function
	 */
	public String getFunction() {
		return function;
	}



	/**
	 * @param function the function to set
	 */
	public void setFunction(String function) {
		this.function = function;
	}



	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}



	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}



	/**
	 * @return the experience
	 */
	public String getExperience() {
		return experience;
	}



	/**
	 * @param experience the experience to set
	 */
	public void setExperience(String experience) {
		this.experience = experience;
	}



	/**
	 * @return the createdBy
	 */
	public String getCreatedBy() {
		return createdBy;
	}



	/**
	 * @param createdBy the createdBy to set
	 */
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}



	/**
	 * @return the createDate
	 */
	public String getCreateDate() {
		return createDate;
	}



	/**
	 * @param createDate the createDate to set
	 */
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}


/**
 * 
 * @param email The email from the login page is passed to the function to validate the login.
 * @param password The password from the login page is passed to the function to validate the login.
 */
	public void login(String email, String password) {
		LoginDao loginDao = new LoginDao();
		loginDao.login(email, password);
	}
		
}
