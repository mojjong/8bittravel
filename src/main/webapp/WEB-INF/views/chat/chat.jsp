<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="utf-8" />
    <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
    Remove this if you use the .htaccess -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>cube2</title>
    <meta name="description" content="" />
    <meta name="author" content="THINKER" />

    <style>

        html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            font-size: 100%;
            vertical-align: baseline;
            background: transparent; }

        #container{

            width:400px;
            height:400px;
            position: relative;
            margin: 100px;

            -webkit-transform-style: preserve-3d;
            -webkit-perspective: 800px;

        }

        #wrapper {
            width:100%;
            height:100%;
            -webkit-transform-style: preserve-3d;
            -webkit-transition-duration: 2s;
        }

        #wrapper li{
            /*li태그 점 없애기*/
            list-style-type: none;
        }

        #wrapper div {
            width:400px;
            height:400px;
            /*동일한 페이지*/
            position: absolute;
            background-color: cornflowerblue;
            border: 1px dashed #000000;
            border-radius: 10px;
        }

        #wrapper .one {
            -webkit-transform:rotateX(90deg) translateZ(200px) ;
        }

        #wrapper .two {
            background-color: coral;
            -webkit-transform:rotateY(90deg)  translateZ(200px) ;
        }

        #wrapper .three {
            -webkit-transform:rotateY(-90deg)  translateZ(200px) ;
        }


        #wrapper .four {
            -webkit-transform:rotateX(90deg) translateZ(-200px) ;
        }


        #wrapper .five {
            -webkit-transform:translateZ(200px) ;
            /*background-color: cyan;*/
            width: 100%;
        }

        #wrapper .five #chatDiv{
            background-color: bisque;
            position: relative;
            width: 80%;
            height: 380px;
            float: left;
        }

        #wrapper .five #roomMemberDiv{
            background-color: beige;
            position: relative;
            width: 19%;
            height: 380px;
            float: left;
        }

        #wrapper .five #titleDiv{
            background-color: burlywood;
            /*페이지 이동가능해짐 "relative"*/
            position: relative;
            width: 100%;
            height: 20px;
        }

        #wrapper .six {
            -webkit-transform:translateZ(-200px) ;
            background-color: deeppink;
        }

    </style>

</head>
<body>

<div id="container">
    <div id="wrapper">

        <div  class="one" >
            PAGE1
            <input type = "text" id = "roomInput">
            <button id = "roomBtn">MAKE ROOM</button>

            <ul id = "roomList">

            </ul>
         </div>

        <div  class="two" >
            PAGE2
            <input type = "text" id = "loginInput">
            <button id = "loginBtn">LOGIN</button>
        </div>

        <div  class="three">PAGE3</div>

        <div  class="four" >PAGE4</div>

        <div  class="five">
            <!--채팅방 제목 DIV-->
            <div id="titleDiv">
                채팅방
                <input type = "text"  id = "msgInput">
                <button id="msgBtn">SEND</button>
            </div>
            <!--채팅하는 DIV-->
            <div id="chatDiv">



                <ul id="chatZone">

                </ul>
            </div>
            <!--그방의 사람들 목록 DIV-->
            <div id="roomMemberDiv">

                <ul id="roomMemberList">

                </ul>
            </div>
        </div>

        <div  class="six">page6</div>


    </div>
</div>


<script src="http://localhost:5555/socket.io/socket.io.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>

    var yDeg = 0;
    var xDeg = 0;

    var socket = io.connect("http://localhost:5555");
    //각자 리스트를 가지고 잇어야 새로 입장한 사람이 입장하기 전에 내용이 보이지 않는다.
    var chatList = new Array();

    //★버튼 클릭 이벤트
    //로그인버튼
    $("#loginBtn").on("click",function(){
        socket.emit("login",$("#loginInput").val());
    });

    //방만들기 버튼
    $("#roomBtn").on("click",function(){
        socket.emit("makeRoom",$("#roomInput").val());
    });

    //채팅메시지 보내기 버튼
    $("#msgBtn").on("click",function(){
        socket.emit("chatMsg",$("#msgInput").val());
    });

    //★★★★li 이벤트 걸어서 넘어가기★★★
    /******가장중요한 부분**********
    Li에 이벤트를 거는 상황이다.
    여기서 문제는 처음에 시작 할때는 li가 존재하지 않기 때문에 이벤트가 걸리지 않았다.
    그럴때는 "delegation"을 해주면 된다.(없는앤데 이벤트를 걸어야 하는 상황, 안쪽에 애한테 전달하기)
    $("#roomList li").on(" click",function(){
        alert("DADAFD");
    });*/
    $("#roomList").on(" click","li",function(){
        socket.emit("joinRoom",$(this).html()); //현재 li가 "this"다.
        $("#wrapper").css("-webkit-transform", "rotateY("+(yDeg-= 270)+"deg)"); // 한번 화면 전환
    });

    //방리스트에 멤버 리스트에서 li클릭하면 귓속말하기
    $("#roomMemberList").on(" click","li",function(){
        console.dir(this.textContent);
        //socket.emit("chatMsg",$("#msgInput").val());
        socket.emit("wisperMsg",{reciever:this.textContent, Msg:$("#msgInput").val()});

    });


    //★★처음시작 화면!!!!!!!!!!!!
    $("#wrapper").css("-webkit-transform", "rotateY("+(yDeg-= 90)+"deg)");

    //★ 로그인 환영인사
    socket.on("welcome", function (loginname) {
        alert(loginname + "님 반가워요!");
        socket.loginname = loginname;
        $("#wrapper").css("-webkit-transform", "rotateX("+(xDeg-= 90)+"deg)");

    });

    //★방리스트 뿌려주기
    socket.on("roomList",function(arr){
        var str = new Array();

        for(var i = 0, len = arr.length ;i<len; i++) {
            str.push("<li>" + arr[i] + "</li>");
        }
        //"join" 하면 배열을 문자열로 한번에 합치기
        $("#roomList").html(str.join(""));

    });

    //★방에 입장한 사람들 확인 메시지
    socket.on("joinMember", function(nickname){
        alert(nickname + "님이 입장하셨습니다");
    });

   //★방에 있는 사람 리스트 뿌리기기
   socket.on("memberList", function(arr){
        var str = new Array();

        for(var i = 0, len = arr.length ;i<len; i++) {
            str.push("<li>" + arr[i] + "</li>");
        }
        //join 하면 배열을 문자열로 한번에 합치기
        $("#roomMemberList").html(str.join(""));
    });

    //★채팅메시지
    socket.on("chatMsg", function(chatMsg){
        chatList.push("<li>" + chatMsg+ "</li>");
        $("#chatZone").html(chatList.join(""));
    });

    //★귓속말 메시지
    socket.on("wisperMsg", function(wisperMsg){

        chatList.push("<li style='background-color: lightgrey'>" + wisperMsg + "</li>");
        $("#chatZone").html(chatList.join(""));

    });


</script>

</body>
</html>
