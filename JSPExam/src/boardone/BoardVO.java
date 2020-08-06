package boardone;
import java.sql.Timestamp;

/* VO란
 * DB의 한 테이블에 존재하는 컬럼들을 멤버 변수로 작성하여, 테이블의 컬럼 값을 java에서 객체로 다루기 위해 사용합니다. 
 * 즉, 데이터들을 캡슐화 해서 객체로 만든 것입니다.
 * 예를 들어 User 테이블에 id, name, phone 컬럼이 있다면, UserVO 클래스에는 id, name, phone 멤버 변수가 존재하고 이에 대한 접근은 getter, setter로 다룹니다.
 */
public class BoardVO { //Value Object
	private int num;
	private String writer;
	private String email;
	private String subject;
	private String pass;
	private int readcount;
	private int ref;
	private int step;
	private int depth;
	private Timestamp regdate;
	private String content;
	private String ip;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}	
	
	
	
}
