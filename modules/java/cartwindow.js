//***************************************************//
// PHPShop JavaScript 2.1                            //
// Copyright � www.phpshop.ru. ��� ����� ��������.   //
//***************************************************//

var combowidth='';
var comboheight='';


function initialize(){
combowidth=cartwindow.offsetWidth;
comboheight=cartwindow.offsetHeight;
if (document.all && !document.querySelector){
setInterval("staticit_ie()",50);

               if(navigator.appName == "Microsoft Internet Explorer"){
               cartwindow.filters.revealTrans.Apply();
               cartwindow.filters.revealTrans.Play();
               }

}else{
     setInterval("staticit_ff()",50);
     }
	 
cartwindow.style.visibility="visible";
}

function initialize_off(){
if (document.all && !document.querySelector){
setInterval("staticit_ie()",50);
cartwindow.style.visibility="hidden";
}
else{
setInterval("staticit_ff()",50);
cartwindow.style.visibility="hidden";
}
//location.replace("/order/"); // ����������������, ���� ���� ����� ������������� �� �����
}

function staticit_ie(){
// cartwindow.style.pixelLeft=document.body.scrollLeft+document.body.clientWidth-combowidth-10;
// cartwindow.style.pixelTop=document.body.scrollTop+document.body.clientHeight-comboheight;
comparewindow.style.right="15px";
comparewindow.style.bottom="0";
}

function staticit_ff(){
// cartwindow.style.left=(document.body.scrollLeft+document.body.clientWidth-combowidth-10) + "px";
// cartwindow.style.top=(document.body.scrollTop+document.body.clientHeight-comboheight) + "px";
comparewindow.style.right="15px";
comparewindow.style.bottom="0";
}

/////////�����! ��� ������ ���������
function initialize2(){
combowidth=comparewindow.offsetWidth;
comboheight=comparewindow.offsetHeight;
if (document.all){
setInterval("staticit_ie2()",50);

               if(navigator.appName == "Microsoft Internet Explorer"){
               comparewindow.filters.revealTrans.Apply();
               comparewindow.filters.revealTrans.Play();
               }

}else{
     setInterval("staticit_ff2()",50);
     }
	 
comparewindow.style.visibility="visible";
}

function initialize_off2(){
if (document.all){
setInterval("staticit_ie2()",50);
comparewindow.style.visibility="hidden";
}
else{
setInterval("staticit_ff2()",50);
comparewindow.style.visibility="hidden";
}
//location.replace("/order/"); // ����������������, ���� ���� ����� ������������� �� �����
}

function staticit_ie2(){
// comparewindow.style.pixelLeft=document.body.scrollLeft+document.body.clientWidth-combowidth-10;
// comparewindow.style.pixelTop=document.body.scrollTop+document.body.clientHeight-comboheight;
comparewindow.style.right="15px";
comparewindow.style.bottom="0";
}

function staticit_ff2(){
comparewindow.style.right="15px";
comparewindow.style.bottom="0";
}

