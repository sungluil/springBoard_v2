package com.spring.board.vo;
/*
 * 이름          널?       유형             
----------- -------- -------------- 
OWNER       NOT NULL VARCHAR2(30)   
TABLE_NAME  NOT NULL VARCHAR2(30)   
COLUMN_NAME NOT NULL VARCHAR2(30)   
COMMENTS             VARCHAR2(4000) 
 */
public class AllColCommentsVo {
	
	private String tableName;
	private String columnName;
	private String comments;
	
	public AllColCommentsVo() {
		// TODO Auto-generated constructor stub
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	
	
}
