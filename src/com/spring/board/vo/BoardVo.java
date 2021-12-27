package com.spring.board.vo;

public class BoardVo {
	
	private String boardType;
	private int boardNum;
	private String boardTitle;
	private String boardComment;
	private String creator;
	private String createTime;
	private String modifier;
	private String modifiedTime;
	private String fileRoot;
	private String boardHits;
	private String boardRef;
	private String boardStep;
	private String boardLev;
	private String fileSize;
	private String infCntn;
	private int totalCnt;
	private ComCodeVo comCodeVo;
	
	public BoardVo() {
		// TODO Auto-generated constructor stub
	}


	
	
	public String getInfCntn() {
		return infCntn;
	}

	public void setInfCntn(String infCntn) {
		this.infCntn = infCntn;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardComment() {
		return boardComment;
	}

	public void setBoardComment(String boardComment) {
		this.boardComment = boardComment;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getModifier() {
		return modifier;
	}

	public void setModifier(String modifier) {
		this.modifier = modifier;
	}

	public String getModifiedTime() {
		return modifiedTime;
	}

	public void setModifiedTime(String modifiedTime) {
		this.modifiedTime = modifiedTime;
	}

	public String getFileRoot() {
		return fileRoot;
	}

	public void setFileRoot(String fileRoot) {
		this.fileRoot = fileRoot;
	}

	public String getBoardHits() {
		return boardHits;
	}

	public void setBoardHits(String boardHits) {
		this.boardHits = boardHits;
	}

	public String getBoardRef() {
		return boardRef;
	}

	public void setBoardRef(String boardRef) {
		this.boardRef = boardRef;
	}

	public String getBoardStep() {
		return boardStep;
	}

	public void setBoardStep(String boardStep) {
		this.boardStep = boardStep;
	}

	public String getBoardLev() {
		return boardLev;
	}

	public void setBoardLev(String boardLev) {
		this.boardLev = boardLev;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	public ComCodeVo getComCodeVo() {
		return comCodeVo;
	}

	public void setComCodeVo(ComCodeVo comCodeVo) {
		this.comCodeVo = comCodeVo;
	}

	
	
}
