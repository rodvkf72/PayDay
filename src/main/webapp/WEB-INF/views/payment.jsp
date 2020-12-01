<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html PUBLIC>
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
           <td name="goodsname">${goodsName}</td>
       </tr>
       
       <tr ><!-- 상품금액 -->
           <td align="right" width = 150 height = 50>상품금액 : </td>
           <td name="goodsprice">${goodsPrice}</td>
           
   </td>
       </tr>
       
       <tr><!-- 물품수량 -->
           <td  align="right" width = 150 height = 50>수량 : </td>
             <td></td>
           
           
       </tr>
       
       <tr><!-- 배송비-->
           <td align="right" width = 150 height = 50 style="border-bottom:1px solid black;">배송비 : </td>
           <td style="border-bottom:1px solid black;">3000</td>
       </tr>
       
       <tr ><!-- 결제금액 -->
           <td align="right" width = 150 height = 50 style="border-bottom:1px solid black;" >결제금액 : </td>
           
           <td style="border-bottom:1px solid black;"></td>
           
       </tr>
       
       
       
       <tr ><!-- 결제수단 -->
           <td align="right" width = 150 height = 50 >결제수단 : </td>
           <td ></td>
       
       </tr>
       
   <tr ><!-- 결제버튼 -->
           <td align="center" width = 150 height = 50 colspan="2">
               <button type="button" onClick="location.href='###'" 
               style = "font-family:'Malgun Gothic';border-radius: 5px; font-size:18px; border: 1px solid
                #1589FF; background-color:#1589FF; color:white; ">결제하기</button>
            </td>   
       
       </tr>
       </table>

       <script language="JavaScript">
           function(){
               var a1=$('.a1').text();
               var a2=$('.a2').text();
               var a3=$('.a3').text();
               var sum=a1*a2+a3;
               $(".sum").text(sum);

           }
       </script>


   </body>
   </head>
   </html>