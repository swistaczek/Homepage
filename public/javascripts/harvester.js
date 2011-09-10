function showMeineMajl(cssId, proUsr, dom, linkText) {
	text = '<a ';
	
	if(cssId != '')
		text += 'id="' + cssId + '" ';
		
	text += 'href="' + 'mail' + 'to:' + proUsr + '@' + dom + '" >';
	text += linkText;
	text += '</a>';
	
	return document.write(text);
}