package com.winpoint.oes.beans;

public class Stream {
	private Integer streamID;
	private String streamName;
	private Integer createdBy;
	private String createdDate;
	public Integer getStreamID() {
		return streamID;
	}
	public Stream(Integer streamID, String streamName, Integer createdBy, String createdDate) {
		super();
		this.streamID = streamID;
		this.streamName = streamName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	public void setStreamID(Integer streamID) {
		this.streamID = streamID;
	}
	public String getStreamName() {
		return streamName;
	}
	public void setStreamName(String streamName) {
		this.streamName = streamName;
	}
	public Integer getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	

}
