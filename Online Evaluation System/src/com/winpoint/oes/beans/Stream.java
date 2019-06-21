package com.winpoint.oes.beans;

public class Stream {
	
	private Integer streamID;
	private String streamName;
	private Integer createdBy;
	private String createdDate;
	/**
	 * @param streamID
	 * @param streamName
	 * @param createdBy
	 * @param createdDate
	 */
	public Stream(Integer streamID, String streamName, Integer createdBy, String createdDate) {
		super();
		this.streamID = streamID;
		this.streamName = streamName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	/**
	 * @return the streamID
	 */
	public Integer getStreamID() {
		return streamID;
	}
	/**
	 * @param streamID the streamID to set
	 */
	public void setStreamID(Integer streamID) {
		this.streamID = streamID;
	}
	/**
	 * @return the streamName
	 */
	public String getStreamName() {
		return streamName;
	}
	/**
	 * @param streamName the streamName to set
	 */
	public void setStreamName(String streamName) {
		this.streamName = streamName;
	}
	/**
	 * @return the createdBy
	 */
	public Integer getCreatedBy() {
		return createdBy;
	}
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	/**
	 * @return the createdDate
	 */
	public String getCreatedDate() {
		return createdDate;
	}
	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

}
