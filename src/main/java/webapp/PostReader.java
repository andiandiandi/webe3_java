package webapp;

import java.util.List;

public class PostReader {

	private MysqlDB db;
	
	public PostReader() {
		 db = DatabaseConnector.getInstance();
	}

	public List<Post> getPosts(){
		return db.getPosts();
	}
	
}
