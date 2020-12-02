<!doctype html>
<html>
<head>
    <title>Modal</title>   
</head>
<body>

<div id="root">
   
    <button type="button" id="modal_opne_btn">결제하기</button>
       
</div>

<div id="modal">
   
<form action = "index" method = "post">
    <div class="modal_content">
        <h2>비밀번호 입력</h2>
       
        <input name = "simple_pw" type = "passward" placeholder = "비밀번호를 입력해주세요" autofocus required >
                  
		<input type = "submit" value = "확인">
    </div>
  </form>
    <div class="modal_layer"></div>
</div>

</body>
</html>

<style>
#modal {
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
  width:300px;
  margin: auto;
  padding:20px 10px;
  
  background:#fff;
  border:2px solid #666;
}

#modal .modal_layer {
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background:rgba(0, 0, 0, 0.5);
  z-index:-1;
}   


</style>

<script>
    document.getElementById("modal_opne_btn").onclick = function() {
        document.getElementById("modal").style.display="block";
    }
   
    document.getElementById("modal_close_btn").onclick = function() {
        document.getElementById("modal").style.display="none";
    }   
</script>