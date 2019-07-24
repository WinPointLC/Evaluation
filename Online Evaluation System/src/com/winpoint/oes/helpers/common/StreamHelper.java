package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.StreamDao;

public class StreamHelper {
	public List<Stream> getStreamList(){
		List<Stream> streamList = new StreamDao().getStreamList();
		Iterator<Stream> streamIterator = streamList.iterator();
		while(streamIterator.hasNext()) {
			Stream stream = (Stream)streamIterator.next();
			System.out.println("Stream Id = " + stream.getStreamId() + ": Stream Name = " + stream.getStreamName());
		}
		return streamList;
	}
}
