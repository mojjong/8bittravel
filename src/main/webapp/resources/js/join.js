//지역 도 옵션값 변화시 호출됨.
function change_regionDOchange(obj)
{   
	  $.ajax({
          type:"GET",
          url: "/main/region/jsonRegionList",
          dataType: "JSON",
          success: function(data){
        	  var str = new Array();
        	  str.push("<label style='padding-top:8px'>시군 선택</label>");
        	  str.push("<select class='form-control' name='regionno' style='display:inline!important; width:80%; float:right;'>");
        	  str.push("<option value=''>시군을 선택하세요</option>");
        	  $.each(data, function(idx, item){
            	  if(item.sigun !== '전체' && item.do == obj.value){
                		str.push("<option value='"+item.no+"'>"+ item.sigun +"</option>");
            	 }
              })
              
              str.push("</select>")
              
              $("#regionSIGUN").html(str.join(""));
          }
      });
}

function checkID(obj){
	  $.ajax({
          type:"GET",
          url: "/user/join/idcheck",
          data: "id="+obj.value,
          success: function(data){
        	  if(obj.value == "") {
        		  $('#idmessage').html("");
        	  } else if(data.result == '0'){
				$('#idmessage').html("<label style='color:blue; padding-top:8px'>사용 가능한 아이디입니다</label>");
				$(".formID" ).attr("data-check", "T");
        	  } else {
        		console.log("사용중");
        		$('#idmessage').html("<label style='color:red; padding-top: 8px'>이미 사용중인 아이디입니다</label>");
        		$(".formID" ).attr("data-check", "F");
        	  }
          }
      });
	  

}

function checkPW(obj){
	if(obj.value == document.infoForm.pw.value){
		$('#pwmessage').html("<label style='color:blue; padding-top:8px'>패스워드 일치</label>");
	} else {
		$('#pwmessage').html("<label style='color:red; padding-top: 8px'>패스워드 불일치</label>");
	}
}

function setGender(gender){
	
	document.infoForm.gender.value = gender;
	if(gender == "M"){
		$('#gendermessage').html("<label style='padding-top:8px; padding-left:10px'>남자</label>");
	}else if(gender == "F"){
		$('#gendermessage').html("<label style='padding-top:8px; padding-left:10px'>여자</label>");
	}else {
		$('#gendermessage').html("");
	}
}

function submitInfoForm(){
/* 	if(document.regionfilter.regionno.value == ""){
		alert("지역 선택을 완료해주세요");
	} */
	
    var f = document.infoForm;
    var chkid = f.id.value;
    var chkpw1 = f.pw.value;
    var chkpw2 = f.pwcheck.value;
    var chkname = f.name.value;
    var chkgender = f.gender.value;
    var chkbirth = f.birth.value;
    var chkregionno = f.regionno.value;
    var chklanglen = f.lang.length;

    if(chkid=="" || chkid.indexOf(" ") != -1) {
      alert("아이디는 필수입력사항이며 공백이 포함될수 없습니다.");
      f.id.value="";
      f.id.focus();
      return false;
    }
    //class="formID" data-check="T"
    if(($(".formID" ).attr("data-check")) == 'F'){
    	alert("중복된 아이디입니다.");
    	return false;
    }

    if(chkpw1=="" || chkpw1.indexOf(" ") != -1) {
      alert("패스워드는 필수입력사항이며 공백이 포함될수 없습니다.");
      f.pw.value="";
      f.pw.focus();
      return false;
    }
    if(chkpw2=="" || chkpw2.indexOf(" ") != -1) {
      alert("패스워드는 필수입력사항이며 공백이 포함될수 없습니다.");
      f.pwcheck.value="";
      f.pwcheck.focus();
      return false;
    }
    if(chkpw1!= chkpw2) {
      alert("두개의 패스워드가 일치해야 합니다.");
      f.pwcheck.value="";
      f.pwcheck.focus();
      return false;
    }
    if(chkname=="" || chkname.indexOf(" ") != -1) {
      alert("이름은 필수입력사항이며 공백이 포함될수 없습니다.");
      f.name.value="";
      f.name.focus();
      return false;
    }   
	if(chkgender == ""){
    	alert("성별을 선택해주세요");
    	return false;
	}
    
    if(chkbirth == "d MM yy"){
    	alert("생년월일을 입력해주세요.");
    	return false;
    }
    if(chkregionno == ""){
		alert("지역 선택을 완료해주세요");
	    return false;
	}
    
 	var idx = 0;
	var speak = [];
	var langList = document.infoForm.lang;
	for(var i=0; i<langList.length; i++){
		if(langList[i].checked)
			speak.push(langList[idx++].value);
	}
    
    if(speak.length == 0){
		alert("사용언어를 하나이상 선택해주세요");
	    return false;
    }
    
    
    
	//ALTER SESSION SET NLS_LANGUAGE = 'AMERICAN';
	//alert(document.infoForm.birth.value);

    document.infoForm.action="/user/join";
    document.infoForm.method="POST";
    document.infoForm.speak.value = speak;

	document.infoForm.submit();
}