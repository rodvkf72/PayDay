<!DOCTYPE html>
<html>
<body onload="init();">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<%! String goods_name;
	String goods_price; %>
	
	<% goods_name = request.getParameter("goodsName");
	goods_price = request.getParameter("goodsPrice");%>
	
	<%=goods_name %>
	<%=goods_price %>
<!--레이아웃 중앙배치 div-->
<div style="position : absolute; top:10%; left:35%; " >
	<!--이미지 배치 div-->
	<div style="width:300px; height:300px; border:1px solid black; display:inline-block; float:left; overflow: hidden;" >
			<img src="#" style="width: 300; height: 300px;">
		</a>
	</div>
<div style="width:50px; height:300px;display: inline; float:left;">
</div>
	<!--물품설명 및 수량,가격 div-->
	<form name="form" method="get">
		<div style="width:200px; height:200px; display:inline-block;">
		   <p style= "font-size:18pt;font-family:'Malgun Gothic'">물품이름 : <%=goods_name%></a>
		
 	       <p style= "font-size:1.5em;font-family:'Malgun Gothic'">가격 : <%=goods_price %></p>
		
    	    <label style= "font-size:18pt;font-family:'Malgun Gothic'">수량 : </label>
        		<input style = "border-radius: 2px;"type=hidden name="sell_price" value="5000">
				<input style = "border: 1px solid #D1D0CE; background-color:#D1D0CE;border-radius: 2px;"type="button" value=" - " onclick="del();"> 
            	<input style = "border-radius: 2px;"type="text" name="amount" value="1" size="3" onchange="change();">
            	<input style = "border: 1px solid #D1D0CE; background-color:#D1D0CE;border-radius: 2px;"type="button" value=" + " onclick="add();"> <br>            
			<label style= "font-size:18pt;font-family:'Malgun Gothic'">금액 : </label><input style = "border-radius: 2px;" type="text" name="sum" size="11" readonly>원
            <p></p>
			<button type="button" onClick="location.href='###'" style = "font-family:'Malgun Gothic';border-radius: 5px; font-size:18px; border: 1px solid #1589FF; background-color:#1589FF; color:white; ">구매하기</button>
		</div>
	</form>
</div>
<!--수량버튼 소스-->
<script language="JavaScript">
<!--
var sell_price;
var amount;

function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;

	sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value = parseInt(hm.value) * sell_price;
}  
</script>
</body>
</html>