package com.restaurant.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class AssocPerf {
	
	private String assocID = "";
	
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date runStart = new Date();
	
	private String assocTitle = "";
	
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date titleDate = new Date();
	
	private String downIDs = "";
	private int numCust;
	private int numRes;
	private int personScore;
	private int teamScore;
	
	public String getAssocID() {
		return assocID;
	}
	public void setAssocID(String assocID) {
		this.assocID = assocID;
	}
	public Date getRunStart() {
		return runStart;
	}
	public void setRunStart(Date runStart) {
		this.runStart = runStart;
	}
	public String getAssocTitle() {
		return assocTitle;
	}
	public void setAssocTitle(String assocTitle) {
		this.assocTitle = assocTitle;
	}
	public Date getTitleDate() {
		return titleDate;
	}
	public void setTitleDate(Date titleDate) {
		this.titleDate = titleDate;
	}
	public String getDownIDs() {
		return downIDs;
	}
	public void setDownIDs(String downIDs) {
		this.downIDs = downIDs;
	}
	public int getNumCust() {
		return numCust;
	}
	public void setNumCust(int numCust) {
		this.numCust = numCust;
	}
	public int getNumRes() {
		return numRes;
	}
	public void setNumRes(int numRes) {
		this.numRes = numRes;
	}
	public int getPersonScore() {
		return personScore;
	}
	public void setPersonScore(int personScore) {
		this.personScore = personScore;
	}
	public int getTeamScore() {
		return teamScore;
	}
	public void setTeamScore(int teamScore) {
		this.teamScore = teamScore;
	}
	@Override
	public String toString() {
		return "AssocPerf [assocID=" + assocID + ", runStart=" + runStart + ", assocTitle=" + assocTitle
				+ ", titleDate=" + titleDate + ", downIDs=" + downIDs + ", numCust=" + numCust + ", numRes=" + numRes
				+ ", personScore=" + personScore + ", teamScore=" + teamScore + "]";
	}


}
