package webapp;

import java.util.Random;

public class Post {

	private int id;
	private String title;
	private String content;
	private String date;
	
	public Post(String title,String content) {
		this.title = title;
		this.content = content;
		id = (new Random().nextInt()+1) * (new Random().nextInt()+1);
		if(id<=0)
			id = id * (-1);
	}
	
	public Post(int id,String title,String content,String date) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
	}
	
	public int getID(){
		return id;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle(){
		return title;
	}
	
	public String getContent(){
		return content;
	}
	
	public String getDate(){
		return date;
	}

	
	
}
