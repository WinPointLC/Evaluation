package _testing;

import java.util.Date;
import java.util.List;

import com.winpoint.oes.beans.FeedbackQuestions;
import com.winpoint.oes.beans.UserCategory;
import com.winpoint.oes.dao.UserCategoryDao;

public class Stub {
	public static void main(String[] args) {
		List<UserCategory> list = new UserCategoryDao().getUserCategoryList();
		for(UserCategory u : list) {
			System.out.println(u.getUserCategoryName());
		}
	}
}
