package com.winpoint.oes.helpers.common;

import java.util.Iterator;
import java.util.List;

import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.dao.StreamDao;

public class StreamHelper {
	public List<Stream> getStreamList(){
		return new StreamDao().getStreamList();
	}
}
