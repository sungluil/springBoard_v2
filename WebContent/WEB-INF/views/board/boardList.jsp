<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
<style type="text/css">
ul {
  padding: 0;
}
li {
  display: inline-block;
}
.xx-selected {
	background-color: #ebf0f9;
}
.notify_area .notice {
/*     line-height: 32px; */
    color: #00ba2e;
    font-size: 11px;
    display: inline-block;
    height: auto;
    letter-spacing: -1px;
    white-space: nowrap;
}
.notify_area {
	padding-right: 14px;
    z-index: 40;
}
.tbl th {
	text-align: center;
}
.tbl > tbody > tr > td {
	border: 1px solid black;
}
.tbl > thead > tr > th {
	border: 1px solid black;
}
.sortBtn1 {
    width: 15px;
    height: 13px;
    margin-right: 2px;
    padding: 0px;
    border-width: 1px;
    border-color: gray;
    background-color: transparent;
    font-size: 8px;
    line-height: 1.2;
    font-weight: bold;
}
.sortBtn2 {
    width: 15px;
    height: 13px;
    margin-right: 2px;
    /* padding: 0px; */
    border-width: 1px;
    /* border-color: gray; */
    /* background-color: transparent; */
    font-size: 8px;
    line-height: 1.2;
    font-weight: bold;
}
.select_component2 {
    display: inline-block;
    position: relative;
    height: 30px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border: solid 1px;
}
.select_component2-selected {
    display: inline-block;
    position: relative;
    height: 30px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border: solid 1px;
}
.select_component2 .select_list {
	display: none;
    position: absolute;
    top: 28px;
    left: -1px;
    width: 100%;
    border: solid 1px #ddd;
    background-color: #fff;
    z-index: 1;
}
.select_component2-selected  .select_list{
	display: grid;
    position: absolute;
    top: 28px;
    left: -1px;
    width: 100%;
    border: solid 1px #ddd;
    background-color: #fff;
    z-index: 1;
}
a:hover {
	cursor:pointer;
	
}
.selectBoardTable-1 {
	font-size: 12px;
}
.selectBoardTable-1 > tbody > tr > td > input {
	height: 15px;
	text-align: center;
}
</style>
</head>
<body>
<div id="bodyContents">
<form action="/board/excelSelectDown.do" method="post" id="f" name="f">
<table style="margin-left: auto; margin-right: auto;" >
	<tr>
		<td align="right">
			total : ${selectCnt}
			<div class="notify_area" style="display: inline;"></div>
			<div id="listSizeSelectDiv" class="select_component2" style="width: 60px;" onclick="select();">
			<a href="#">10개씩</a>
			<ul class="select_list">
				<li><a href="/board/boardList.do">5개씩</a></li>
				<li><a href="/board/boardList.do">10개씩</a></li>
				<li><a href="/board/boardList.do">20개씩</a></li>
				<li><a href="/board/boardList.do">30개씩</a></li>
				<li><a href="/board/boardList.do">40개씩</a></li>
<!-- 				<li><a href="/board/boardList.do?pageNo=1&boardType=&search=board_title&keyword=&pageSize=40">40개씩</a></li> -->
			</ul>			
			</div>
<!-- 			<select name="size" id="size"> -->
<!-- 				<option value="5" id="5">10개씩</option> -->
<!-- 				<option value="10" id="10">10개씩</option> -->
<!-- 				<option value="20" id="20">20개씩</option> -->
<!-- 				<option value="30" id="30">30개씩</option> -->
<!-- 				<option value="40" id="40">40개씩</option> -->
<!-- 				<option value="50" id="50">50개씩</option> -->
<!-- 			</select> -->
		</td>
	</tr>
	<tr>
		<td>
			<table id="boardTable" class="tbl">
			<thead>
				<tr>
					<th width="60" align="center" class="sort-alpha">
						<input type="checkbox" class="allchk" value="" name="allchk">
					</th>
					<th width="80" align="center" class="sort-alpha">
						Type
						<img src="/resources/img/no_sort.gif" class="sorttable_img" style="cursor: pointer; margin-left: 10px;">
					</th>
					<th width="40" align="center" class="sort-alpha">
						No
					</th>
					<th width="300" align="center" class="sort-alpha">
						Title
					</th>
				</tr>
			</thead>
			<tbody id="sizeTable">
				<c:forEach items="${boardList}" var="list">
					<tr id="xx">
						<td align="center">
							<input name="delchk" class="x" type="checkbox" value="${list.boardNum }" onclick="check(this)">
						</td>
						<td align="center">
							${list.comCodeVo.codeName}
						</td>
						<td align="center">
							${list.boardNum}
						</td>
						<td>
							<a href = "/board/${list.boardType}/${list.boardNum}/boardView.do?pageNo=${pageNo}">${list.boardTitle}</a>
						</td>
					</tr>	
				</c:forEach>
				</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td align="right" style="padding: 5px;">
			<a href='<c:url value='/board/excelDown.do' />'><button id="excelDownBtn" class="btn btn-primary btn-sm" type="button">엑셀 다운로드</button></a>
			<button id="excelSelectDownBtn" class="btn btn-primary btn-sm" type="button">엑셀 선택 다운로드</button>
			<button id="delAllbtn" class="btn btn-primary btn-sm" type="button">선택삭제</button>
			<button class="btn btn-primary btn-sm" type="button" onclick="location=href='/board/boardWrite.do'">글쓰기</button>
			<button id="searchButton" type="button" class="btn btn-primary btn-sm">조회</button>
		</td>
	</tr>
	<tr>
		<td align="center">
			<ul>
				<li>
					<a href="boardList.do?pageNo=1">&lt;&lt;</a>
					<c:if test="${pageVo.pageNo >= 6 }">
						<a href="boardList.do?pageNo=${pageVo.prevPage }">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">
			            <c:choose>
			                <c:when test="${i eq pageVo.pageNo-1}">${i}</c:when>
			                <c:otherwise>
<%-- 			                <a href="boardList.do?pageNo=${i}&boardType=${boardType }&search=${search }&keyword=${keyword }&pageSize=${size}">${i}</a> --%>
<%-- 			                <a href="boardList.do?pageNo=${i}" onclick="page('${size}','${boardType }','${search }','${keyword }','${i}');">${i}</a> --%>
			                	<a onclick="page('${size}','${boardType }','${search }','${keyword }','${i}');">${i}</a>
			                </c:otherwise>
			            </c:choose>
			        </c:forEach>
			        <c:if test="${pageVo.pageNo >= 5 }">
			        <a href="boardList.do?pageNo=${pageVo.nextPage }">&gt;</a>
			        </c:if>
			        <a href="boardList.do?pageNo=${pageVo.totalPage }">&gt;&gt;</a>
		        </li>
			</ul>
		</td>
	</tr>
	<tr>
		<td>	
			<div class="custom-control custom-checkbox" id="checkboxArea">
				<input value="all" type="checkbox" name="board1" id="defaultInline1">전체
				<c:forEach var="list" items="${codeList}">
					<c:if test="${list.codeType eq 'menu' }"> 
						<input class="chk02" type="checkbox" name="board2"value="${list.codeId }">${list.codeName}
					</c:if>
				</c:forEach>
				<button id="searchChkButton" type="button" class="btn btn-primary btn-sm">검색</button>
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">Open modal</button>
				<div>
<!-- 					<select name="boardTypeSel"> -->
<%-- 						<c:forEach var="list" items="${codeList}"> --%>
<%-- 							<c:if test="${list.codeType eq 'menu' }"> 				 --%>
<%-- 								<option value="${list.codeId }">${list.codeName}</option> --%>
<%-- 							</c:if> --%>
<%-- 						</c:forEach> --%>
<!-- 					</select> -->
					<select name="search">
						<option value="board_Title">제목</option>
						<option value="board_Comment">내용</option>
					</select>
					<input type="text" id="keyword">
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td align="center">
		</td>
	</tr>
	<tr>
		<td>
			<div class="notify_area1">
				
			</div>
		</td>
	</tr>
	<tr>
		<td align="center">

		</td>
	</tr>
</table>	
</form>
<form name="frm">
<table align="center">
	<tr>
		<td align="center">
			<select name="arg22" class="arg1">
				<c:forEach items="${boardList }" var="list">
					<option value="${list.boardNum }">${list.boardNum }</option>
				</c:forEach>
			</select>
			<input type="button" onclick="open_check();" value="누름">
		</td>
	</tr>
	<tr>
		<td>
			<input type="hidden" name="arg1"/>
			<input type="hidden" name="arg2" />		
		</td>
	</tr>
</table>
</form>
<form action="tableAllColumns.do" method="post">
<select name="tableName" class="selectTableAll">
	<option>............................................................</option>
	<option value="BOARD">BOARD 스프링게시판</option>
	<option value="COM_CODE">COM_CODE 코드</option>
	<option value="COMMENT_TABLE">COMMENT_TABLE 댓글테이블</option>
	<option value="USER_INFO">USER_INFO 회원정보 테이블</option>
</select>
<input type="button" value="조회" class="selectTableBtn">
<input type="button" value="등록" class="insertTableBtn">
</form>
<div class="selectTableAllDiv"></div>
</div>
<div class="btn-card"></div>
<!-- 모달창 -->
	<div class="container">
		<!-- The Modal -->
		<div class="modal" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Modal Heading</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
					<form name="modalFrm" method="post">
	    			<input type="hidden" name="bizNm" id="bizNm" value="">
					<table class="table table-bordered">
						<colgroup>
							<col style="width: 30%;" />
							<col style="width: 70%;" />
						</colgroup>
						<tbody>
							<tr>
								<th>사업연도</th>
								<td><select class="form-control input-sm"
									id="MDSRCH_BIZ_YEAR" name="MDSRCH_BIZ_YEAR">
										<option value="">선택</option>
										<fpms:yearOption defaultYn="N" />
								</select></td>
							</tr>
							<tr>
								<th>세부사업명</th>
								<td><select class="form-control input-sm"
									id="MDSRCH_ANN_NO" name="MDSRCH_ANN_NO">
										<option value="">선택</option>
								</select></td>
							</tr>
							<tr>
								<th>활동처</th>
								<td><select class="form-control input-sm"
									id="MDSRCH_ACTCOMPNO" name="MDSRCH_ACTCOMPNO">
										<option value="">선택</option>
								</select></td>
							</tr>
						</tbody>
					</table>
					</form>
					</div>
					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script id="entry-template" type="text/x-handlebars-template">
{{#boardList}}
<tr>
	<td align="center">
		<input name="delchk" class="x" type="checkbox" value="{{boardNum}}" onclick="check(this)">
	</td>
	<td align="center">
		{{comCodeVo.codeName}}
	</td>
	<td align="center">
		{{boardNum}}
	</td>
	<td>
		<a href = "/board/{{boardType}}/{{boardNum}}/boardView.do?pageNo={{pageNo}}">{{boardTitle}}</a>
	</td>
</tr>
{{/boardList}}

</script>
<script type="text/javascript">

//셀렉트창 선택이벤트
$j(".selectTableAll").change(function() {

	var tableName = document.querySelector('.selectTableAll');
	tableName = tableName.options[tableName.selectedIndex].value
	var values = [];
	var boardType = document.querySelector('.selectTableAll');
	$j.ajax({
		type:"post",
		url:"/board/tableAllColumns.do",
		data:{"tableName":tableName},
		dataType : "json",
		success:function(data) {
			//console.log(data);
			values = data.selectTableList ; //java에서 정의한 ArrayList명을 적어준다.
			//console.log(values);
			var html;
			html="<form id='boardUpdateTable'>";
            html+="<table border='1px;' class='selectBoardTable-1'>";
            html+="<tr>";
            html+="<td width='40' align='center'>ID</td>";
            html+="<td align='center'>컬럼ID</td>";
            html+="<td width='120' align='center'>컬럼명</td>";
            html+="<td width='40' align='center'>PK</td>";
            html+="<td width='40' align='center'>NULL</td>";
            html+="<td align='center'>데이터</td>";
            html+="<td align='center'>컬럼 값(변경전)</td>";
            html+="<td align='center'>컬럼 값(변경후)</td>";
            html+="</tr>";
			$j.each(values, function( index, value ) {
                //console.log( index + " : " + value.columnName ); //Book.java 의 변수명을 써주면 된다.
	            html+="<tr>";
	            html+="<td align='center'>"+(index+1)+"</td>";
                html+="<td>"+value.columnName+"</td>";
                html+="<td align='center'>"+value.allColCommentsVo.comments+"</td>";
                html+="<td align='center'>"+value.allConsColumnsVo.position+"</td>";
                html+="<td align='center'>"+value.nullable+"</td>";
                html+="<td align='center'>"+value.dataType+"</td>";
                html+="<td align='center' class='columns-"+index+"'></td>";
                html+="<td><input class='board-"+index+"' style='border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;'></td>";
	            html+="</tr>";
            });
            html+="</table>";
            html+="</form>";
			$j('.selectTableAllDiv').html(html);				
			
			//$j('#bodyContents').children().remove();
            // Contents 영역 교체
            //$j('#bodyContents').html(data);
		},
		error:function(request,status,error) {
			//alert("에러 = "+req.status);
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
});
//null 체크 함수(custom)
vali();
function vali(value){

    if (value === null) return true; 
    if (typeof value === 'string' && value === '') return true;
    if (typeof value === 'undefined') return true;
    
    return false;

}

//조회버튼 이벤트
$j('.selectTableBtn').click(function() {
	
	
	var tableName = document.querySelector('.selectTableAll');
	tableName = tableName.options[tableName.selectedIndex].value
	var boardType = $j('.board-0').val();
	var boardNum = $j('.board-1').val();
	
	var $table = document.querySelector('.selectBoardTable-1');
	var int_rows = $table.rows.length-1;
	console.log("int_rows = "+int_rows)
	
	var in_array = new Array(int_rows);
	var col_value = ""; //컬럼값 
	
	for(var i = 0; i < in_array.length ; i++) {
		in_array[i] = $j('.board-'+i).val();		
	}
	console.log("in_array = "+in_array)
	for(var i = 0; i < in_array.length ; i++) {
		if(in_array[i] == undefined) {
			col_value += '|';
		} else {
			col_value += in_array[i] + '|';
		}	
	}
	console.log(col_value)
	
	if(vali(boardType)) {
		return false;
	}
	if(vali(boardNum)) {
		return false;
	}
	
	$j.ajax({
		type:"post",
		url:"/board/tableAllColumns.do",
		data:{"tableName":tableName,"col_value":col_value},
		dataType : "json",
		success:function(data) {
			values = data.inf_cntn ; //java에서 정의한 ArrayList명을 적어준다.
			console.log(values);

			var out_array = values.split('|');
			console.log(out_array);
			console.log(in_array.length)
			for(var i=0;i<in_array.length ;i++) {
				$j('.columns-'+i).html(out_array[i]);
				$j('.board-'+i).val(out_array[i]);
			}
			
// 			$j.each(values, function() {
// 				$j('.columns-0').html(values.boardType);
// 				$j('.columns-1').html(values.boardNum);
// 				$j('.columns-2').html(values.boardTitle);
// 				$j('.columns-3').html(values.boardComment);
// 				$j('.columns-4').html(values.creator);
// 				$j('.columns-5').html(values.createTime);
// 				$j('.columns-6').html(values.modifier);
// 				$j('.columns-7').html(values.modifiedTime);
// 				$j('.columns-8').html(values.fileRoot);
// 				$j('.columns-9').html(values.boardHits);
// 				$j('.columns-10').html(values.boardRef);
// 				$j('.columns-11').html(values.boardStep);
// 				$j('.columns-12').html(values.boardLev);
// 				$j('.columns-13').html(values.fileSize);
				
// 				$j('.board-0').val(values.boardType);
// 				$j('.board-1').val(values.boardNum);
// 				$j('.board-2').val(values.boardTitle);
// 				$j('.board-3').val(values.boardComment);
// 				$j('.board-4').val(values.creator);
// 				$j('.board-5').val(values.createTime);
// 				$j('.board-6').val(values.modifier);
// 				$j('.board-7').val(values.modifiedTime);
// 				$j('.board-8').val(values.fileRoot);
// 				$j('.board-9').val(values.boardHits);
// 				$j('.board-10').val(values.boardRef);
// 				$j('.board-11').val(values.boardStep);
// 				$j('.board-12').val(values.boardLev);
// 				$j('.board-13').val(values.fileSize);

// 			})

			

		},
		error:function(request,status,error) {
			//alert("에러 = "+req.status);
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
});


$j('.insertTableBtn').click(function() {
	/*
	var params = {
			boardType    : $j('.board-0').val(),
			boardNum     : $j('.board-1').val(),
			boardTitle   : $j('.board-2').val(),
			boardComment : $j('.board-3').val(),
			creator      : $j('.board-4').val(),
			createTime   : $j('.board-5').val(),
			modifier     : $j('.board-6').val(),
			modifiedTime : $j('.board-7').val(),
			fileRoot     : $j('.board-8').val(),
			boardHits    : $j('.board-9').val(),
			boardRef     : $j('.board-10').val(),
			boardStep    : $j('.board-11').val(),
			boardLev     : $j('.board-12').val(),
			fileSize     : $j('.board-13').val()
		};
	//console.log(params);
	
	var boardType    = $j('.board-0').val();
	var boardNum     = $j('.board-1').val();
	var boardTitle   = $j('.board-2').val();
	var boardComment = $j('.board-3').val();
	var creator      = $j('.board-4').val();
	var createTime   = $j('.board-5').val();
	var modifier     = $j('.board-6').val();
	var modifiedTime = $j('.board-7').val();
	var fileRoot     = $j('.board-8').val();
	var boardHits    = $j('.board-9').val();
	var boardRef     = $j('.board-10').val();
	var boardStep    = $j('.board-11').val();
	var boardLev     = $j('.board-12').val();
	var fileSize     = $j('.board-13').val();
	*/
	var $table = document.querySelector('.selectBoardTable-1');
	var int_rows = $table.rows.length-1;
	console.log("int_rows = "+int_rows)
	
	var in_array = new Array(int_rows);
	var col_value = ""; //컬럼값 
	
	for(var i = 0; i < in_array.length ; i++) {
		in_array[i] = $j('.board-'+i).val();		
	}
	console.log("in_array = "+in_array)
	for(var i = 0; i < in_array.length ; i++) {
		if(in_array[i] == undefined) {
			col_value += '|';
		} else {
			col_value += in_array[i] + '|';
		}	
	}
	console.log(col_value)
	
	$j.ajax({
		type:"post",
		url:"/board/updateTableColumns.do",
		data:{"col_value":col_value},
		dataType : "json",
		success:function(data) {
			/*
			values = data.selectBoardTable ; //java에서 정의한 ArrayList명을 적어준다.
			console.log(values);

			$j.each(values, function() {
				$j('.columns-0').html(values.boardType);
				$j('.columns-1').html(values.boardNum);
				$j('.columns-2').html(values.boardTitle);
				$j('.columns-3').html(values.boardComment);
				$j('.columns-4').html(values.creator);
				$j('.columns-5').html(values.createTime);
				$j('.columns-6').html(values.modifier);
				$j('.columns-7').html(values.modifiedTime);
				$j('.columns-8').html(values.fileRoot);
				$j('.columns-9').html(values.boardHits);
				$j('.columns-10').html(values.boardRef);
				$j('.columns-11').html(values.boardStep);
				$j('.columns-12').html(values.boardLev);
				$j('.columns-13').html(values.fileSize);
				
				$j('.board-0').val(values.boardType);
				$j('.board-1').val(values.boardNum);
				$j('.board-2').val(values.boardTitle);
				$j('.board-3').val(values.boardComment);
				$j('.board-4').val(values.creator);
				$j('.board-5').val(values.createTime);
				$j('.board-6').val(values.modifier);
				$j('.board-7').val(values.modifiedTime);
				$j('.board-8').val(values.fileRoot);
				$j('.board-9').val(values.boardHits);
				$j('.board-10').val(values.boardRef);
				$j('.board-11').val(values.boardStep);
				$j('.board-12').val(values.boardLev);
				$j('.board-13').val(values.fileSize);

			})
			*/
		},
		error:function(request,status,error) {
			//alert("에러 = "+req.status);
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});


});


function page(pageSize,boardType,board_title,board_comment,pageNo) {
	//alert(pageSize+boardType+board_title+board_comment+pageNo)
	$j.ajax({
		type:"post",
		url:"/board/boardListPage.do",
		data:{"boardType":boardType,"search":board_title,"keyword":board_comment,"pageSize":pageSize,"pageNo":pageNo},
		dataType : "json",
		traditional : true,
		success:function(json) {
			
			var source = $j("#entry-template").html();
			var template = Handlebars.compile(source);
			$j("#sizeTable").html(template(json))
		},
		error:function(request,status,error) {
			//alert("에러 = "+req.status);
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function open_check() {
	var arg1 = $j("select[name=arg22]").val()
	var url = "/board/check.do";
	var title = "Check";
	var status = 'width=400", height=600, left=2000, top=400, resizable = yes';
	window.open(url, title, status);	
	frm.target = title;
	frm.action = url;
	frm.method = "post";
	frm.arg1.value = arg1;
	frm.submit();
}

// $j(".popBtn").click(function() {
	
	
// });


$j("#size").change(function() {
	var size = document.getElementById('size').options[document.getElementById('size').selectedIndex].value;
	if(size == 10){
        $j('#10').attr('selected','selected');
    } else if(size == 20){
        $j('#20').attr('selected','selected');
    } else if(size == 30){
        $j('#30').attr('selected','selected');
    } else if(size == 40){
        $j('#40').attr('selected','selected');
    } else if(size == 50){
        $j('#50').attr('selected','selected');
    }
    var boardType = [];
	$j("input[name='board2']:checked").each(function(){
		boardType.push($j(this).val());
	});
	var board_title = $j("select[name=search]").val();
	if(board_title == "" || board_comment == null) {
		board_title="";
	}
	var board_comment = $j("#keyword").val();
	if(board_comment == "" || board_comment == null) {
		board_comment="";
	}
	alert(board_comment)
	location.href="/board/boardList.do?pageNo=1&boardType="+boardType+"&search=board_title&keyword="+board_comment+"&pageSize="+size;
});

$j("#ExcelBtn").click(function() {
	location.href="/board/modalWindow.do";
});
/*
$j("#size").change(function() {
	//var size = $j("#size option:selected").val();
    //var size = [[$j{size}]]; // 화면전환 하면서 값을 받아온다
    if(size == 10){
        $j('#10').attr('selected','selected');
    } else if(size == 20){
        $j('#20').attr('selected','selected');
    } else if(size == 30){
        $j('#30').attr('selected','selected');
    } else if(size == 40){
        $j('#40').attr('selected','selected');
    } else if(size == 50){
        $j('#50').attr('selected','selected');
    }
	var size = document.getElementById('size').options[document.getElementById('size').selectedIndex].value;
    
	
	var html="<a href='#'></a>";
	$j("#10").html(html);
});
*/
	
// 	var state = {"pageSize":size,"search":board_title,"keyword":board_comment,"boardType":boardType};
// 	var title = '';
// 	var url = '/board/boardList.do?pageNo=1&boardType='+boardType+'&search='+board_title+'&keyword='+board_comment+'&pageSize='+size;
// 	history.pushState(state, title, url);
	//History.pushState("/board/boardList.do?pageNo=1&boardType="+boardType+"&search="+board_title+"&keyword="+board_comment+"&pageSize="+size);
	//alert("size"+size+"board_title"+board_title+"boardComment"+board_comment+"boardType"+boardType)
	//?pageNo=1&boardType=&search=&keyword=&pageSize=10
// 	$j.ajax({
// 		//url:"/board/boardSizeList.do",
// 		url:"/board/boardList.do",
// 		data:{"pageSize":size,"search":board_title,"keyword":board_comment,"boardType":boardType},
// 		dataType: "text",
// 		type:"GET",
// 		success:function(json) {
// 			alert("성공")
// 			//location.href="/board/boardList.do?pageNo=1";
// 			var source = $j("#entry-template").html();
// 			var template = Handlebars.compile(source);
// 			$j("#sizeTable").html(template(json))
// 		},
// 		error:function(req) {
// 			alert("실패")
// 		}
// 	})
/*
$j("#searchButton").click(function() {
	//var a = document.getElementById('blockSize').options[document.getElementById('blockSize').selectedIndex].text;
	var size = document.getElementById('size').options[document.getElementById('size').selectedIndex].value;
	//alert(size);
	$j.ajax({
		url:"/board/boardSizeList.do",
		data:{"size":size},
		dataType: "json",
		type:"POST",
		success:function(json) {
			//alert(blockSize)
			//location.href="/board/boardList.do?pageNo=1";
			var source = $j("#entry-template").html();
			var template = Handlebars.compile(source);
			$j("#sizeTable").html(template(json))
		},
		error:function(req) {
			
		}
	})
});
*/
//조회버튼 클릭시 체크박스 값
$j("#search2").click(function(){
	var board_title = $j("select[name=search]").val();
	var board_comment = $j("#keyword").val();
// 	var sendObject = ({
// 		board_title   : $j("select[name='search']").val()
// 	   ,board_comment : $j("#keyword").val()
// 	})
	//console.log(board_title+board_comment);
	$j.ajax({
		type:"get",		
		url:"/board/boardList.do",
// 		data: JSON.stringify(sendObject),
		data:{"search":board_title,"keyword":board_comment},
		//dataType: "json",
		success:function(json) {
			//location.href="/board/boardList.do?search="+board_title+"&keyword="+board_comment;
			//var source = $j("#entry-template").html();
			//var template = Handlebars.compile(source);
			//$j("#sizeTable").html(template(json))
		},
		error:function(request,status,error) {
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
});

// function check(box) {
// 	if(box.checked == true) {
// 		document.querySelector("#xx").classList.add("xx","selected");
		
// 	} else {
// 		//document.querySelector(".xx-selected").className = "xx";
// 		document.querySelector(".xx",".selected").classList.remove("xx","selected");		
// 	}
// }

$j("#excelSelectDownBtn").click(function() {
	f.submit();
});
// $j("#excelSelectDownBtn").click(function() {
// 	var arrExcel = [];
// 	$j("input[type=checkbox]:checked").each(function() {
// 		arrExcel.push($j(this).val());
// 	})
// 	//var boardNum = arrVal.join(",");
// 	if(arrExcel == "") {
// 		alert("체크해주세요");
// 		return false;
// 	}
// 	$j.ajax({
// // 		enctype: 'multipart/form-data',
// 		url:"/board/excelSelectDown.do",
// 		data:{"excelNum":arrExcel},
// 		type:"post",
// 		async: false,
// 		traditional:true,
// 		success:function(data) {
// 			//alert("엑셀다운성공")
// 			//location.href("/board/excelSelectDown.do");
// 		},
// 		error:function(req) {
			
// 		}
// 	})
// })



$j("#delAllbtn").click(function() {
	var arr = [];
	$j("input[type=checkbox]:checked").each(function() {
		arr.push($j(this).val());
	})

	$j.ajax({
		url:"/board/boardDelete.do",
		data:{"boardNum":arr},
		type:"post",
		traditional:true,
		success:function(data) {
			alert("삭제 성공")
			location.replace("/board/boardList.do?pageNo=1");
		},
		error:function(req) {
			
		}
	})
})

$j(".allchk").change(function() {
	
	if($j(this).prop("checked")) {
		
		$j("input[name=delchk]").prop('checked', true);
		$j(".x").parent().parent().prop("className","xx-selected")
		
	} else {
		$j("input[name=delchk]").prop('checked', false);
		$j(".x").parent().parent().prop("className","")
	}
	//체크박스 갯수	
	var chk_leng = $j("input:checkbox[name=delchk]:checked").length;
	if(chk_leng > 0) {
		var html ="<span id='notice' class='notice'><span class='selection'>"+chk_leng+"개의 메일을 선택했습니다.</span></span>"
		$j(".notify_area").html(html);	    	
	} else {
		$j(".notify_area").html("");
	}
	

	
});
// $j(".select_component2").change(function() {
// 	var $this = $j(this);
// 	if($this.prop('checked')) {
// 		alert("d")
// 	}
// });

function select() {
	//var $this = $j(this);
	//$j(this).attr('class','class_name');
	//var els = $j('.select_component2');
	var m = $j("#listSizeSelectDiv").attr('class');
	//var m = $this.attr('class');
	//var the_class_name2 = $j(".select_component2-selected").attr('class');
	var element = document.querySelector("#listSizeSelectDiv");
	if(m == "select_component2") {
		element.className='select_component2-selected';		
	} else if(m == "select_component2-selected"){
		element.className='select_component2';
	}
	
}

$j(".x").change(function() {
	
	var $this = $j(this);
	if($this.prop('checked')) {
		$this.parent().parent().prop("className","xx-selected")
	} else {
		$this.parent().parent().prop("className","xx")
	}
	//체크박스 갯수	
	var chk_leng = $j("input:checkbox[name=delchk]:checked").length;
	if(chk_leng > 0) {
		var html ="<span id='notice' class='notice'><span class='selection'>"+chk_leng+"개의 메일을 선택했습니다.</span></span>"
		$j(".notify_area").html(html);	    	
	} else {
		$j(".notify_area").html("");
	}
	
	var selchk = $j("input:checkbox[name=delchk]:checked").length
	var fulchk = $j("input:checkbox[name=delchk]").length
	console.log(selchk)
	console.log(fulchk)
	if(selchk==fulchk) {
		$j("input:checkbox[name=allchk]").prop("checked", true);	
	} else if (selchk<fulchk) {
		$j("input:checkbox[name=allchk]").prop("checked", false);	
	}

})
check();
function check() {
	//event.preventDefault(); // event 중단 함수
	//체크박스 4개체크시에 전체버튼체크
	$j("input:checkbox[name=board2]").click(function() {
		//alert("누름");
		if($j("input:checkbox[name=board2]:checked").length == 4) {
			$j("input:checkbox[name=board1]").prop("checked", true);
		} else {
			$j("input:checkbox[name=board1]").prop("checked", false);
		}
	});
	//전체버튼 체크시 전부체크 전부해제
	$j("input:checkbox[name=board1]").click(function() {
		if ($j(this).prop('checked')) {
			$j("input:checkbox[name=board2]").prop("checked", true);			
		} else {
			$j("input:checkbox[name=board2]").prop("checked", false);
		}
	});


		
		
	//조회버튼 클릭시 체크박스 값
	$j("#searchChkButton").click(function(){
		var boardType = [];
		$j("input[name='board2']:checked").each(function(){
			boardType.push($j(this).val());
		});
		var size = $j("#size option:selected").val();
		
		//var boardTypeSel = $j("select[name=boardTypeSel]").val();
		//var boardComment = $j("select[name=search]").val();
		//console.log(arrVal);
		//var boardType = arrVal.join(",");
		//console.log(boardType);
		//var size = document.getElementById('size').options[document.getElementById('size').selectedIndex].value;
	    //var size = [[$j{size}]]; // 화면전환 하면서 값을 받아온다

		var board_title = $j("select[name=search]").val();
		var board_comment = $j("#keyword").val();
		
		$j.ajax({
			type:"get",
			//url:"/board/boardSearch.do",
			url:"/board/boardList.do",
			data:{"boardType":boardType,"search":board_title,"keyword":board_comment,"pageSize":size},
			//dataType: "json",
			dataType : "text",
			traditional : true,
			success:function(data) {
				$j('#bodyContents').children().remove();
	            // Contents 영역 교체
	            $j('#bodyContents').html(data);
	            
				//location.href = "/board/boardList.do?pageNo=1&s="+boardType+"&search="+board_title+"&keyword="+board_comment+"&pageSize="+size;
			    if(size == 10){
			        $j('#10').attr('selected','selected');
			    } else if(size == 20){
			        $j('#20').attr('selected','selected');
			    } else if(size == 30){
			        $j('#30').attr('selected','selected');
			    } else if(size == 40){
			        $j('#40').attr('selected','selected');
			    } else if(size == 50){
			        $j('#50').attr('selected','selected');
			    }
// 				var source = $j("#entry-template").html();
// 				var template = Handlebars.compile(source);
// 				$j("#sizeTable").html(template(json))
			},
			error:function(request,status,error) {
				//alert("에러 = "+req.status);
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
	
}


//체크박스 갯수	
var chk_leng = $j("input:checkbox[name=delchk]:checked").length;
if(chk_leng > 0) {
	var html ="<span id='notice' class='notice'><span class='selection'>"+chk_leng+"개의 메일을 선택했습니다.</span></span>"
	$j(".notify_area").html(html);	    	
} else {
	$j(".notify_area").html("");
}


/*
function openPop() {
	var win = window.open("/board/popup.do", "PopupWin", 'width=400, height=600, left=2000, top=400, resizable = yes');
}
*/

//팝업창
openPop();
function openPop() {
	if(getCookie("내쿠키")!="true") {
		var win = window.open("/board/popup.do", "PopupWin", 'width=400, height=600, left=2000, top=400, resizable = yes');	
	}
}
//쿠키가져오기
function getCookie(cookieName) {
	
	//var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    //return value? value[2] : null;
	
    /*
    var nameOfCookie = name + "=";  
    var x = 0;  
    while ( x <= document.cookie.length )  
    {  
        var y = (x+nameOfCookie.length);  
        if ( document.cookie.substring( x, y ) == nameOfCookie ) {  
            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )  
                endOfCookie = document.cookie.length;  
            return unescape( document.cookie.substring( y, endOfCookie ) );  
        }  
        x = document.cookie.indexOf( " ", x ) + 1;  
        if ( x == 0 ) break;  
    }  
    return "";
    */
	cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
		start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}  


$j(document).ready(function() {
	$j('.tbl').each(function() {
		var $table = $j(this);
		// 플러그인 호출
		//$table.alternateRowColors();
		// 테이블 헤더 정렬
		$j('th', $table).each(function(column) {
			// 헤더의 CSS 클래스가 sort-alpha로 설정되어있다면, ABC순으로 정렬
			if ($j(this).is('.sort-alpha')) {
				// 클릭시 정렬 실행
				var direction = -1;
				$j(this).click(function() {
					direction = -direction;
					var rows = $table.find('tbody > tr').get(); 
					// 현재 선택된 헤더관련 행 가져오기
					// 자바스크립트의 sort 함수를 사용해서 오름차순 정렬
					rows.sort(function(a,b) {
						var keyA = $j(a).children('td').eq(column).text().toUpperCase();
						var keyB = $j(b).children('td').eq(column).text().toUpperCase();
						if (keyA < keyB) {
							return -direction;
						}
						if (keyA > keyB) {
							return direction;
						}
						return 0;
					});
					//정렬된 행을 테이블에 추가
					$j.each(rows,function(index,row) {
						$table.children('tbody').append(row)
					});
					//$table.alternateRowColors(); // 재정렬
				});
			}
		}); // end table sort
	}); // end each()
}); // end ready()






// $j("table.tbl").each(function() {
	
// 	var $table = $j(this);
	
// 	//헤더정렬
// 	$j("this",$table).each(function(i) {
		
// 		alert("header");
// 		if ($j(this).is('.sort-alpha')) {
			
// 			var direction = -1;
// 			$j(this).click(function() {
// 				alert("D");
// 			});
// 		}
		
// 	});
	
// });





// $j(".x").change(function(){
	
// 	var $this = $j(this);
// 	var m = $this.parent().attr('class');
// 	if ($j(this).prop('checked')) {	
// 		$j(this).parent().parent().prop("className", 'xx-selected')
// 	} else {
// 		$j(this).parent().parent().prop("className", 'xx')
// 	}
// });
// //전부선택 or 전부해제
// $j(".allchk").change(function(){
// 	if ($j(this).prop('checked')) {
// 		$j("input:checkbox[name=delchk]").prop("checked", true);	
// 		$j(".xx").prop("className", 'xx-selected')
// 		$j(".xx-selected").css( 'background-color', '#ebf0f9' );
// 	} else {
// 		$j("input:checkbox[name=delchk]").prop("checked", false);
// 		$j(".xx-selected").prop("className", 'xx')
// 		$j(".xx").css( 'background-color', '' );
// 	}
// });

</script>
</html>