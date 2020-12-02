<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />
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
           <td ></td>
       
       </tr>
       
   <tr ><!-- 결제버튼 -->
           <td align="center" width = 150 height = 50 colspan="2">
           	<form action="final" method="post">
           		<input id="price" value="${goodsPrice }" hidden>
           		<input id="amount" value="${goodsAmount }" hidden>
           		<input id="tex" value="3000" hidden>
           		<input id="result" value="" hidden>
           		
               <input type="submit" onClick="location.href='###'" 
               style = "font-family:'Malgun Gothic';border-radius: 5px; font-size:18px; border: 1px solid
                #1589FF; background-color:#1589FF; color:white; " value="결제하기">
            </form>
            </td>   
       
       </tr>
       <button id="click" type="button" onclick="add();" hidden>test</button>
       </table>
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
       ele.click();
       </script>


   </body>
   </head>
   </html>