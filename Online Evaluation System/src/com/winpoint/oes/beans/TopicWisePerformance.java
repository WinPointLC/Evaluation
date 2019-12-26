package com.winpoint.oes.beans;

public class TopicWisePerformance {
	String topicName;
	int topicwiseNumberOfCorrectAns;
	
	public TopicWisePerformance(String topicName, int topicwiseNumberOfCorrectAns) {
		super();
		this.topicName = topicName;
		this.topicwiseNumberOfCorrectAns = topicwiseNumberOfCorrectAns;
	}
	
	public String getTopicName() {
		return topicName;
	}
	
	public void setTopicName(String topicName) {
		this.topicName = topicName;
	}
	
	public int getTopicwiseNumberOfCorrectAns() {
		return topicwiseNumberOfCorrectAns;
	}
	
	public void setTopicwiseNumberOfCorrectAns(int topicwiseNumberOfCorrectAns) {
		this.topicwiseNumberOfCorrectAns = topicwiseNumberOfCorrectAns;
	}
}
