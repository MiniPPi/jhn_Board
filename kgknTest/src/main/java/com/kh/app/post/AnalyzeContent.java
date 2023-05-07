package com.kh.app.post;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.app.service.BoardServiceImpl;
import com.kh.app.vo.ListVo;
@Component
public class AnalyzeContent {
	
	
	public Map<String, Integer> analyzeContent(String content) {
		
		if(content == null) {
			return new HashMap<>();
		}
		//빈도수 분석
	    Map<String, Integer> wordCount = new HashMap<>();
	    StringTokenizer st = new StringTokenizer(content, " ");
	    while (st.hasMoreTokens()) {
	        String word = st.nextToken();
	        if (wordCount.containsKey(word)) {
	            wordCount.put(word, wordCount.get(word) + 1);
	        } else {
	            wordCount.put(word, 1);
	        }
	    }
	    System.out.println(wordCount);
	    return wordCount;
	}
	
	
	
}
	
	
