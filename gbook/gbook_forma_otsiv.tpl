<div class="box-content-shadow">

<div class="page_nava">

  <div> <a href="/">Главная</a> / <a href="/gbook/">Отзывы</a> </div>

</div>

<h2>Форма отзыва</h2>

<div align="center" style="padding-bottom:10px;"> <strong  style="font-size:14px; color:#FF0000">@Error@</strong></div>

<form method="post" name="forma_gbook">

  <table cellpadding="5" cellspacing="1" border="0" class="standart" align="center">

    <tr>

      <td align="right">Имя</td>

      <td align="left"><input type="text" name="name_new" maxlength="45" style="width:300px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F ">

        <img src="images/shop/flag_green.gif" alt="flag_green" width="16" height="16" border="0" hspace="5" align="top"> </td>

    </tr>

    <tr >

      <td align="right">E-mail</td>

      <td align="left"><input type="text" name="mail_new" maxlength="45" style="width:300px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F ">

      </td>

    </tr>

    <tr>

      <td align="right">Тема или № Заказа</td>

      <td><textarea style="width:300px; height:50px; font-family:tahoma; font-size:11px ; color:#4F4F4F " name="tema_new" maxlength="60"></textarea>

        <img src="images/shop/flag_green.gif" alt="flag_green" width="16" height="16" border="0" hspace="5" align="top"></td>

    </tr>

    <tr bgcolor="ffffff">

      <td align="right">Отзыв</td>

      <td valign="top"><textarea style="width:300px; height:150px; font-family:tahoma; font-size:11px ; color:#4F4F4F " name="otsiv_new" maxlength="1000" ></textarea>

        <img src="images/shop/flag_green.gif" alt="flag_green" width="16" height="16" border="0" hspace="5" align="top"></td>

    </tr>

  </table>

  <table cellpadding="5" cellspacing="1" border="0" class="standart" width="100%">

    <tr>

      <td colspan="2" align="center"><DIV class="gbook_otvet"><IMG height=16 hspace=5 src="images/shop/comment.gif" width=16 align=absMiddle border=0>Данные, отмеченные <B>звездочками</B> обязательны для заполнения</font></DIV>

        <p><br>

        </p>

        <table>

          <tr>

            <td><img src="phpshop/captcha.php" alt="captcha" border="0"></td>

            <td>Введите код, указанный на картинке<br>

              <input type="text" name="key" style="width:220px;">

              <img src="images/shop/flag_green.gif" alt="flag_green" width="16" height="16" border="0" hspace="5" align="top"></td>

          </tr>

        </table>

        <p><br>

        </p>

        <input type="Hidden" name="send_gb">

        <table align="center">

          <tr>

            <td><img src="images/shop/brick_error.gif" alt="brick_error" width="16" height="16" border="0"><a href="javascript:forma_gbook.reset();" class="standart"><u class=style1>Очистить форму</u></a></td>

            <td width="20"></td>

            <td><img src="images/shop/brick_go.gif" alt="brick_go" width="16" height="16" border="0"><a href="javascript:Fchek();" class="standart"><u class=style1>Добавить отзыв</u></a></td>

          </tr>

        </table>

        <input type="hidden" name="send_gb" value="ok" >

      </td>

    </tr>

  </table>

</form>

</div>

