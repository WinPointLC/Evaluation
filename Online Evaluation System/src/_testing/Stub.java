package _testing;

import java.util.Date;
import java.util.List;

import com.winpoint.oes.beans.FeedbackQuestions;
import com.winpoint.oes.beans.UserCategory;
import com.winpoint.oes.controllers.student.FeeDetailsServlet;
import com.winpoint.oes.controllers.student.FeedbackServlet;
import com.winpoint.oes.dao.FeeDetailsDao;
import com.winpoint.oes.dao.GetUsersDao;
import com.winpoint.oes.dao.StudentCourseDetailsDao;
import com.winpoint.oes.dao.UserCategoryDao;

public class Stub {
	public static void main(String[] args) {
		GetUsersDao dao = new GetUsersDao();
		dao.getUsers();
	}
}
