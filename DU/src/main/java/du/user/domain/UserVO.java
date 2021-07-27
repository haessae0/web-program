package du.user.domain;

public class UserVO {
	
	private String userId;
	
	private String pwd;
	
	private String name;
	
	private String areaCd;
	
	private String areaNm;
	
	private String job;
	
	private String phone;
	
	private String email;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getareaCd() {
		return areaCd;
	}

	public void setareaCd(String areaCd) {
		this.areaCd = areaCd;
	}

	public String getareaNm() {
		return areaNm;
	}

	public void setareaNm(String areaNm) {
		this.areaNm = areaNm;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}