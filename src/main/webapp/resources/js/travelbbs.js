function update(){
	document.guideForm.action="/bbs/travelbbs/update";
	document.guideForm.method="get";
	document.guideForm.submit();
}

function write(){
	document.writeForm.action="/bbs/travelbbs/write";
	document.writeForm.method="get";
	document.writeForm.submit();
}

//가이드 하기 버튼 Click
function doguide(travelno){
	document.writeForm.action = "/bbs/guide/gWrite";
	document.writeForm.method="get";
	document.writeForm.travelno.value = travelno;
	
	document.writeForm.submit();
	
	
}