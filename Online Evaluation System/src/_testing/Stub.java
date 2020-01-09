package _testing;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;

import com.winpoint.oes.beans.FeedbackQuestions;
import com.winpoint.oes.beans.UserCategory;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.controllers.student.FeeDetailsServlet;
import com.winpoint.oes.controllers.student.FeedbackServlet;
import com.winpoint.oes.dao.FeeDetailsDao;
import com.winpoint.oes.dao.FeedbackQuestionsDao;
import com.winpoint.oes.dao.LoginDao;
import com.winpoint.oes.dao.StudentCourseDetailsDao;
import com.winpoint.oes.dao.UserCategoryDao;
import com.winpoint.oes.helpers.common.FeedbackQuestionsHelper;

public class Stub {
	public static void main(String[] args) throws IOException {
//		int userId = 1;
//		int courseId = 1;
//		Hashtable<Integer, String> studentResponses = new Hashtable<Integer, String>();
//		
//		studentResponses.put(1, "5");
//		studentResponses.put(2, "3");
//		studentResponses.put(3, "1");
//		studentResponses.put(4, "2");
		
//		FeedbackQuestionsHelper dao = new FeedbackQuestionsHelper();
		//dao.recordFeedback(userId, courseId, studentResponses);
		
		LoginDao dao = new LoginDao();
		UserProfile p = new UserProfile();
		p.setEmail("aaaaaaaaaashrirangmhalgi@gmail.com");
		p.setPassword("a");
		p.setFirstName("aaa");
		UserProfile p1 = dao.createLogin(p);
		
		
	}
}
