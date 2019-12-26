package com.winpoint.oes.beans;

import java.util.Date;

public class Stream {
	
	private Integer streamId;
	private String streamName;
	private Integer createdBy;
	private Date createdDate;
	
	/**
	 * @param streamId
	 * @param streamName
	 * @param createdBy
	 * @param createdDate
	 */
	public Stream(Integer streamId, String streamName, Integer createdBy, Date createdDate) {
		super();
		this.streamId = streamId;
		this.streamName = streamName;
		this.createdBy = createdBy;
		this.createdDate = createdDate;
	}
	
	public Stream(int streamId, String streamName) {
		this.streamId = streamId;
		this.streamName = streamName;
	}

	/**
	 * @return the streamId
	 */
	public Integer getStreamId() {
		return streamId;
	}
	
	/**
	 * @param streamId the streamId to set
	 */
	public void setStreamId(Integer streamId) {
		this.streamId = streamId;
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
	public Date getCreatedDate() {
		return createdDate;
	}
	
	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
}