package user.model;

public class User {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private String father_name;
	private String mother_name;
	private String gender;
	private String dob;
	private String blood_group;
	private String address;
	private String city;
	private String state;
	private String country;
	private String pincode;
	private String course;
	private String deaprtment;
	private String contactno;
	private String profile_photo;
	private String posting_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFather_name() {
		return father_name;
	}
	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}
	public String getMother_name() {
		return mother_name;
	}
	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getDeaprtment() {
		return deaprtment;
	}
	public void setDeaprtment(String deaprtment) {
		this.deaprtment = deaprtment;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getProfile_photo() {
		return profile_photo;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String fname, String lname, String email, String password, String father_name,
			String mother_name, String gender, String dob, String blood_group, String address, String city,
			String state, String country, String pincode, String course, String deaprtment, String contactno,
			String profile_photo, String posting_date) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.father_name = father_name;
		this.mother_name = mother_name;
		this.gender = gender;
		this.dob = dob;
		this.blood_group = blood_group;
		this.address = address;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
		this.course = course;
		this.deaprtment = deaprtment;
		this.contactno = contactno;
		this.profile_photo = profile_photo;
		this.posting_date = posting_date;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", password="
				+ password + ", father_name=" + father_name + ", mother_name=" + mother_name + ", gender=" + gender
				+ ", dob=" + dob + ", blood_group=" + blood_group + ", address=" + address + ", city=" + city
				+ ", state=" + state + ", country=" + country + ", pincode=" + pincode + ", course=" + course
				+ ", deaprtment=" + deaprtment + ", contactno=" + contactno + ", profile_photo=" + profile_photo
				+ ", posting_date=" + posting_date + ", getId()=" + getId() + ", getFname()=" + getFname()
				+ ", getLname()=" + getLname() + ", getEmail()=" + getEmail() + ", getPassword()=" + getPassword()
				+ ", getFather_name()=" + getFather_name() + ", getMother_name()=" + getMother_name() + ", getGender()="
				+ getGender() + ", getDob()=" + getDob() + ", getBlood_group()=" + getBlood_group() + ", getAddress()="
				+ getAddress() + ", getCity()=" + getCity() + ", getState()=" + getState() + ", getCountry()="
				+ getCountry() + ", getPincode()=" + getPincode() + ", getCourse()=" + getCourse()
				+ ", getDeaprtment()=" + getDeaprtment() + ", getContactno()=" + getContactno()
				+ ", getProfile_photo()=" + getProfile_photo() + ", getPosting_date()=" + getPosting_date()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	public void setProfile_photo(String profile_photo) {
		this.profile_photo = profile_photo;
	}
	public String getPosting_date() {
		return posting_date;
	}
	public void setPosting_date(String posting_date) {
		this.posting_date = posting_date;
	}
	
}