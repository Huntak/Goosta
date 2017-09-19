package com.kh.goosta.grade.vo;

public class GradeVO implements java.io.Serializable {
	private String gradename;
	private int gradetotalstandard;
	private int grademileagerate;
	
	public GradeVO(){}

	public GradeVO(String gradename, int gradetotalstandard, int grademileagerate) {
		super();
		this.gradename = gradename;
		this.gradetotalstandard = gradetotalstandard;
		this.grademileagerate = grademileagerate;
	}

	public String getGradename() {
		return gradename;
	}

	public void setGradename(String gradename) {
		this.gradename = gradename;
	}

	public int getGradetotalstandard() {
		return gradetotalstandard;
	}

	public void setGradetotalstandard(int gradetotalstandard) {
		this.gradetotalstandard = gradetotalstandard;
	}

	public int getGrademileagerate() {
		return grademileagerate;
	}

	public void setGrademileagerate(int grademileagerate) {
		this.grademileagerate = grademileagerate;
	}

	@Override
	public String toString() {
		return "GradeVO [gradename=" + gradename + ", gradetotalstandard=" + gradetotalstandard + ", grademileagerate=" + grademileagerate + "]";
	}
	
	
}
