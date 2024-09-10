package org.techhub.MovieRecommendationSystem.model;

public class MovieModel {
	int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	String mname;

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMlang() {
		return mlang;
	}

	public void setMlang(String mlang) {
		this.mlang = mlang;
	}

	public String getMdtrel() {
		return mdtrel;
	}

	public void setMdtrel(String mdtrel) {
		this.mdtrel = mdtrel;
	}

	public String getMcity() {
		return mcity;
	}

	public void setMcity(String mcity) {
		this.mcity = mcity;
	}

	public String getMcategory() {
		return mcategory;
	}

	public void setMcategory(String mcategory) {
		this.mcategory = mcategory;
	}

	String mlang;
	String mdtrel;
	String mcity;
	String mcategory;

}
