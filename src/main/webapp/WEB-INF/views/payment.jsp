<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="${path}/resources/dist/css/style.css">
</head>
<body>
   <table  border="0" width = "300" height ="128"  style=" position : absolute; top:20%; left:40%; border-left:0; border-right:0; border-top:0; border-bottom:0; font-size:20pt;font-family:'Malgun Gothic'">
       
       <th colspan="2" style="font-size:40px;">최종결제정보</th>
       <tr ><!-- 상품이름 -->
           <td align="right" width = 150 height = 50 >상품이름 : </td>
           <td>${goodsName}</td>
       </tr>
       
       <tr ><!-- 상품금액 -->
           <td align="right" width = 150 height = 50>상품금액 : </td>
           <td>${goodsPrice }</td>
           
   </td>
       </tr>
       
       <tr><!-- 물품수량 -->
           <td  align="right" width = 150 height = 50>수량 : </td>
             <td>${goodsAmount }</td>
           
           
       </tr>
       
       <tr><!-- 배송비-->
           <td align="right" width = 150 height = 50 style="border-bottom:1px solid black;">배송비 : </td>
           <td style="boarder-bottom:1px solid black;">3000</td>
           <!-- <td style="border-bottom:1px solid black;">3000</td> -->
       </tr>
       
       <tr ><!-- 결제금액 -->
           <td align="right" width = 150 height = 50 style="border-bottom:1px solid black;" >결제금액 : </td>
           
           <td id="result2"></td>
           
       </tr>
       
       
       
       <tr ><!-- 결제수단 -->
           <td align="right" width = 150 height = 50 >결제수단 : </td>
           <td >
	           <select id="simple" name="simple" onchange='simplebox()'>
	           		<option value='' selected>-- 선택 --</option>
	           		<option value="simple">간편결제</option>
	           		<option value="normal">일반결제</option>				
	           </select>
           </td>
       
       </tr>
       
   <tr ><!-- 결제버튼 -->
           <td align="center" width = 150 height = 50 colspan="2">
           <button type="button" id="modal_opne_btn">결제하기</button>
            </td>   
       
       </tr>
       
       <div id="modal">
       	<form action = "simplepw" method = "post">
		    <div class="modal_content">
		        <input name="user_id" value="${userId }" hidden>
           		<input type="password" name="simple_pw" value=""> <!-- 테스트용 -->
           		<input name="price" id="price" value="${goodsPrice }" hidden>
           		<input name="amount" id="amount" value="${goodsAmount }" hidden>
           		<input name="tex" id="tex" value="3000" hidden>
           		<input name="result" id="result" value="" hidden>
           		<input name="result3" id="result3" value="" hidden>
           		
               <input type="submit" 
               style = "font-family:'Malgun Gothic';border-radius: 5px; font-size:18px; border: 1px solid
                #1589FF; background-color:#1589FF; color:white; " value="확인">
		    </div>
		  </form>
		  <div class="modal_layer"></div>
		</div>
     
       </table>
       <button id="click" type="button" onclick="add();" hidden>test</button>
       <script>
       var ele = document.getElementById('click');
	    
       function add() {
           var pr = document.getElementById('price').value;
           var am = document.getElementById('amount').value;
           var te = document.getElementById('tex').value;
           var sum = parseInt(pr * am) + parseInt(te);
           
           document.getElementById('result').value = sum;
           document.getElementById('result2').innerHTML = sum;
       	   }

		function simplebox() {
			var obj = document.getElementById('simple');
			var index = obj.selectedIndex;
			var value = obj.options[index].value;

			document.getElementById('result3').value = value;
			}
		
       ele.click();
       document.getElementById("modal_opne_btn").onclick = function() {
            var test = document.getElementById('result3').value;
            if (test != 'simple') {
					alert("테스트를 위해 간편결제만을 지원합니다.")
                } else {
	        		document.getElementById("modal").style.display="block";
                }
	    }
	   
	    document.getElementById("modal_close_btn").onclick = function() {
	        document.getElementById("modal").style.display="none";
	    }
       </script>


   </body>
   </head>
   </html>
   <style>
   #modal{
	display:none;
	position:relative;
	width:100%;
	height:100%;
	z-index:1;
}
#modal h2 {
	margin:0;
}
#modal button {
	display:inline-block;
	width:100px;
	margin-left:calc(100% - 100px - 10px);
}
#modal .modal_content {
	width: 300px;
	margin: auto;
	padding: 20px 10px;
	background: #fff;
	border: 2px solid #666;
}
#modal.modal_layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: -1;
}
</style>