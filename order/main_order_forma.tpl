 @ComStartReg@

<div  id=allspecwhite style="margin-bottom:20px"> <img src="images/shop/icon_key.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> <a href="/users/register.html" class="b">Зарегистрируйтесь</a> <strong>(Не обязательно)</strong> Вы всегда сможете иметь доступ к <b>истории покупок.</b> Скидки станут <b>накопительными.</b> </div>

@ComEndReg@

<p><br>

</p>

<form method="post" name="forma_order" action="/done/">

  <table cellpadding="5" cellspacing="0" width=100%>

    <tr>

      <td align="right"><b>Заказ №</b></td>

      <td><input type="text" name=ouid style="width:60px;" value="@orderNum@" readonly="1">

        <b>/</b>

        <input type="text" style="width:60px;" value="@orderDate@" readonly="1">

      </td>

    </tr>

    <tr>

      <td align="right"><strong>Доставка</strong></td>

      <td>@orderDelivery@</td>

    </tr>

    <tr valign="top">

      <td align="right"><strong>E-mail:</strong></td>

      <td><input type="text" name="mail" style="width:300px;" maxlength="30" value="@UserMail@" @formaLock@>

        <img src="images/shop/flag_green.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> Пример: sale@profserviz.ru</td>

    </tr>

    <tr>

      <td align="right" class=tah12><strong>Контактное лицо:</strong></td>

      <td><input type="text" name="name_person" style="width:300px;" maxlength="30" value="@UserName@" @formaLock@>

        <img src="images/shop/flag_green.gif" width="16" height="16" border="0" hspace="5" align="absmiddle">Пример: Наталья (Для регионов России ФИО полностью)</td>

    </tr>

    <tr>

      <td align="right" >Компания:</td>

      <td><input type="text" name="org_name" style="width:300px;" maxlength="100" value="@UserComp@" @formaLock@> 
      Пример: ООО &quot;Чешский хрусталь&quot;</td>

    </tr>

    <tr>

      <td align="right" >ИНН:</td>

      <td><input type="text" name="org_inn" style="width:150px;" maxlength="50" value="@UserInn@" @formaLock@> 

      Пример: 7701779229</td>

    </tr>

    <tr>

      <td align="right" >КПП:</td>

      <td><input type="text" name="org_kpp" style="width:150px;" maxlength="50" value="@UserKpp@" @formaLock@> 

      Пример: 770101001</td>

    </tr>

    <tr>

      <td align="right"><strong>Телефон:</strong></td>

      <td><input type="text" name="tel_code" style="width:50px;" maxlength="5" value="@UserTelCode@">

        -

        <input type="text" name="tel_name" style="width:150px;" maxlength="30" value="@UserTel@">

        <img src="images/shop/flag_green.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> Пример: 8495-7895221</td>

    </tr>

    <tr>

      <td align="right">Время доставки:</td>

      <td>от

        <input type="text" name="dos_ot" style="width:50px;" maxlength="5">

        ч.&nbsp;&nbsp;&nbsp;

        до

        <input type="text" name="dos_do" style="width:50px;" maxlength="5">

        ч. Пример: от 15 ч. до 22 ч.</td>

    </tr>

    <tr>

      <td align="right" class=tah12><strong>Адрес доставки:</strong></td>

      <td><textarea style="width:300px; height:100px;" name="adr_name" >@UserAdres@</textarea>

        <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle">Пример: м.Варшавская, 2-й Котляковский пер., д1c1</td>

    </tr>

    <tr>

      <td align="right">Тип оплаты<br>

        покупки</td>

      <td>@orderOplata@</td>

    </tr>

    <tr>

      <td></td>

      <td><div id=allspecwhite><img src="images/shop/comment.gif" width="16" height="16" border="0" hspace="5" align="absmiddle">Данные, отмеченные <b>звездочками</b> <img src="images/shop/flag_green.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> обязательны для заполнения.<br>

        </div></td>

    </tr>
 
    <tr>

      <td colspan="2" align="center"><p><br>

        </p>

        <table align="center">

          <tr>

            <td><a href="javascript:OrderChek();" class=link><img src="images/shop/oformit-zakaz.png" border="0" align="absmiddle" name="myimage" id="myimage" onMouseOver="document.all('myimage').src='images/shop/oformit-zakaz-2.png'" onMouseOut="document.all('myimage').src='images/shop/oformit-zakaz.png'"></a></td>

          </tr>

        </table>
        <p></p>
        Нажимая кнопку "Оформить заказ", я подтверждаю свою дееспособность, даю согласие на обработку персональных данных в соответствии с указанной "<a href="/page/privacypolicy.html" title="Политика Конфиденциальности" target="_blank">Политикой Конфиденциальности</a>" и соглашаюсь с условиями "<a href="/page/dogovor-oferta.html" title="Договор-оферты" target="_blank">Договора-оферты</a>".
        
      <!--  <table align="center">

          <tr>
          
          <td><img src="images/shop/brick_error.gif" border="0" align="absmiddle"> <a href="javascript:forma_order.reset();" class=link>Очистить форму</a></td> /-->
          
          </tr>

        </table>
        
        <input type="hidden" name="send_to_order" value="ok" >

        <input type="hidden" name="d" id="d" value="@deliveryId@">

        <input type="hidden" name="nav" value="done">

      </td>

    </tr>

  </table>

</form>
