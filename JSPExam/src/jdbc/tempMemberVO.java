package jdbc;

//tmpmember에 대한 Value Object를 사용할 빈을 만듬
public class tempMemberVO {
	private String id, passwd, name, mem_num1, mem_num2, e_mail, phone, 
				   zipcode, address, job;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMem_num1() {
		return mem_num1;
	}

	public void setMem_num1(String mem_num1) {
		this.mem_num1 = mem_num1;
	}

	public String getMem_num2() {
		return mem_num2;
	}

	public void setMem_num2(String mem_num2) {
		this.mem_num2 = mem_num2;
	}

	public String getE_mail() {
		return e_mail;
	}

	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
}
