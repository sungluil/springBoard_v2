package com.spring.board.vo;

/*
 * 이름                   널?       유형            
-------------------- -------- ------------- 
OWNER                NOT NULL VARCHAR2(30)  
TABLE_NAME           NOT NULL VARCHAR2(30)  
COLUMN_NAME          NOT NULL VARCHAR2(30)  
DATA_TYPE                     VARCHAR2(106) 
DATA_TYPE_MOD                 VARCHAR2(3)   
DATA_TYPE_OWNER               VARCHAR2(120) 
DATA_LENGTH          NOT NULL NUMBER        
DATA_PRECISION                NUMBER        
DATA_SCALE                    NUMBER        
NULLABLE                      VARCHAR2(1)   
COLUMN_ID                     NUMBER        
DEFAULT_LENGTH                NUMBER        
DATA_DEFAULT                  LONG          
NUM_DISTINCT                  NUMBER        
LOW_VALUE                     RAW(32 BYTE)  
HIGH_VALUE                    RAW(32 BYTE)  
DENSITY                       NUMBER        
NUM_NULLS                     NUMBER        
NUM_BUCKETS                   NUMBER        
LAST_ANALYZED                 DATE          
SAMPLE_SIZE                   NUMBER        
CHARACTER_SET_NAME            VARCHAR2(44)  
CHAR_COL_DECL_LENGTH          NUMBER        
GLOBAL_STATS                  VARCHAR2(3)   
USER_STATS                    VARCHAR2(3)   
AVG_COL_LEN                   NUMBER        
CHAR_LENGTH                   NUMBER        
CHAR_USED                     VARCHAR2(1)   
V80_FMT_IMAGE                 VARCHAR2(3)   
DATA_UPGRADED                 VARCHAR2(3)   
HISTOGRAM                     VARCHAR2(15) 
 */

public class AllTabColumnsVo {

	private String tableName;
	private String columnName;
	private String nullable;
	private String dataType;
	private int dataPrecision;
	private int dataScale;
	private int dataLength;
	private int columnId;
	private AllColCommentsVo allColCommentsVo;
	private AllConsColumnsVo allConsColumnsVo;
	
	public AllTabColumnsVo() {
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

	public String getNullable() {
		return nullable;
	}

	public void setNullable(String nullable) {
		this.nullable = nullable;
	}

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public int getDataPrecision() {
		return dataPrecision;
	}

	public void setDataPrecision(int dataPrecision) {
		this.dataPrecision = dataPrecision;
	}

	public int getDataScale() {
		return dataScale;
	}

	public void setDataScale(int dataScale) {
		this.dataScale = dataScale;
	}

	public int getDataLength() {
		return dataLength;
	}

	public void setDataLength(int dataLength) {
		this.dataLength = dataLength;
	}
	
	public int getColumnId() {
		return columnId;
	}

	public void setColumnId(int columnId) {
		this.columnId = columnId;
	}

	public AllColCommentsVo getAllColCommentsVo() {
		return allColCommentsVo;
	}

	public void setAllColCommentsVo(AllColCommentsVo allColCommentsVo) {
		this.allColCommentsVo = allColCommentsVo;
	}

	public AllConsColumnsVo getAllConsColumnsVo() {
		return allConsColumnsVo;
	}

	public void setAllConsColumnsVo(AllConsColumnsVo allConsColumnsVo) {
		this.allConsColumnsVo = allConsColumnsVo;
	}
	
	
	
	
}
