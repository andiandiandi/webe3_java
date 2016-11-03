package webapp;

import java.util.List;

public interface MysqlDB {
	void add(Post p);
	void delete(Post p);
	List<Post> getPosts();
	void close();
}
