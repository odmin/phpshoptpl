function share42(u,t,str){
	if(!u)u=location.href;
	if(!t)t=document.title;
	if(!str)str=location.href;
	u=encodeURIComponent(u);
	t=encodeURIComponent(t);
	
	var s=new Array('http://www.google.com/bookmarks/mark?op=edit&output=popup&bkmk='+u+'&title='+t+'" title="��������� �������� � Google"','http://vkontakte.ru/share.php?url='+u+'" title="���������� � ��������"','http://connect.mail.ru/share?url='+u+'&title='+t+'" title="���������� � ���� ����@Mail.Ru"','http://www.juick.com/post?body='+t+' - '+u+'" title="�������� � Juick"','http://twitter.com/home?status='+t+' - '+u+'" title="�������� � Twitter"','http://www.facebook.com/sharer.php?u='+u+'&t='+t+'" title="���������� � Facebook"','http://www.livejournal.com/update.bml?event='+u+'&subject='+t+'" title="������������ � LiveJournal"','http://bobrdobr.ru/add.html?url='+u+'&title='+t+'" title="���������"','http://www.odnoklassniki.ru/dk?st.cmd=addShare&st._surl='+u+'&title='+t+'" title="�������� � �������������"','http://www.myspace.com/Modules/PostTo/Pages/?u='+u+'&t='+t+'" title="�������� � MySpace"','#" onclick="print();return false" title="�����������"','http://zakladki.yandex.ru/newlink.xml?url='+u+'&name='+t+'" title="�������� � ������.��������"');
	for(i=0;i<s.length;i++){
		document.write('<a style="display:inline-block;width:24px;height:24px;margin:0px 7px 7px 0px;background:url(http://'+window.location.hostname+str+'javascript/links/icons.png) -'+24*i+'px 0" href="'+s[i]+'" target="_blank"></a>');
	}
}