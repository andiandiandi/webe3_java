package webapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DatabaseConnector implements MysqlDB{

	private DatabaseConnector() {
		start();
	}

	private static class LazyHolder {
		private static final DatabaseConnector INSTANCE = new DatabaseConnector();
	}

	public static DatabaseConnector getInstance() {
		return LazyHolder.INSTANCE;
	}

	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost/posts";

	// Database credentials
	static final String USER = "root";
	static final String PASS = "hallo123";

	private Connection conn = null;
	private Statement stmt = null;

	private void start() {

		// STEP 2: Register JDBC driver
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void query(String query) {
		try {
			stmt = conn.createStatement();
			stmt.executeQuery(query);
			
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void update(String query) {
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate(query);
			
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void close() {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Post> getPosts() {

		String query = "select id,title,textContent,date from posts";
		System.out.println("Creating statement...");
		List<Post> l = new ArrayList<Post>();

		try {
			stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String textContent = rs.getString("textContent");
				String date = rs.getString("date");
				l.add(new Post(id,title, textContent, date));
			}

			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return l;
	}

	@Override
	public void add(Post p) {
		update(String.format("INSERT INTO posts VALUES('%d','%s','%s',now());",p.getID(),p.getTitle(),p.getContent()));
	}

	@Override
	public void delete(Post p) {
		query("");
	}

}
