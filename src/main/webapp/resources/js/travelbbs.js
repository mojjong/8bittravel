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