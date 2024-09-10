package org.techhub.MovieRecommendationSystem.model;

public class UserModel extends MovieModel {
	int uid;

	@Override
	public String toString() {
		return "UserModel [uid=" + uid + ", uname=" + uname + ", uemail=" + uemail + ", ucontact=" + ucontact + "]";
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUcontact() {
		return ucontact;
	}

	public void setUcontact(String ucontact) {
		this.ucontact = ucontact;
	}

	String uname;
	String uemail;
	String ucontact;

}
