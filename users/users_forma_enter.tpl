<!--<div id="ico_user2">
  <table align="right" style="margin-right:16px" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td class="fxtd1"><span><a href="/users/">@UsersLogin@</a></span></td>
      <td class="fxtd2"><span><a href="javascript:UserLogOut();">Выйти из кабинета</a></span></td>
    </tr>
  </table>
  <div style="clear:both"></div>
  <div style="position:relative; width:100%; float:left;" >
    <div class="linkUserRoom6">
      <table align="right" style="margin-right:16px"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><div class="linkUserRoom7"><a href="/users/order.html">Отследить заказ</a></div></td>
          <td><div class="linkUserRoom7"><a href="/users/notice.html">Уведомления о товарах</a></div></td>
          <td><div class="linkUserRoom7"><a href="/users/message.html">Связь с менеджерами</a></div></td>
        </tr>
      </table>
    </div>
  </div>
</div>-->

<div id="ico_user">
	<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">Кабинет</a>
<!--
  <table border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td class="fxtd"><span ><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">Войти в личный кабинет</a> или <a href="/users/register.html" title="Регистрация">Регистрация?</a> </span></td>
      <td style="padding-left:5px" ><span class="red"><span>@usersError@</span></span></td>
    </tr>
  </table>-->
  <div style="clear:both"></div>
  <div id="light" class="white_content">
    <div style="position:relative;" class="usbg">
        <table width="210"  border="0" cellspacing="0" cellpadding="0" align="center">
          <tr>
            <td valign="top" ><table style="margin-top:30px;" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr valign="top">
                  <td><h4>Личный кабинет</h4></td>
                  <td align="right"><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">закрыть</a></td>
                </tr>
              </table></td>
          </tr>
          <tr>
			  <td>
			  <table cellspacing="0" cellpadding="4">
				<tr>
						  <td><div class="linkUserRoom7"><a href="/users/order.html">Отследить заказ</a></div></td></tr>
						   <tr><td><div class="linkUserRoom7"><a href="/users/notice.html">Уведомления о товарах</a></div></td></tr>
						   <tr><td><div class="linkUserRoom7"><a href="/users/message.html">Связь с менеджерами</a></div></td>
						</tr>
						 <tr>
				  <td class="fxtd1"><span><a href="/users/">@UsersLogin@</a></span></td></tr>
				  <tr><td class="fxtd2"><span><a href="javascript:UserLogOut();">Выйти из кабинета</a></span></td>
				</tr>
			  </table>
			  </td>
    </tr>
        </table>
    </div>
  </div>
</div>
