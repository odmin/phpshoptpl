 @ComStartReg@
<div  id=allspecwhite style="margin-bottom:20px"> <img src="images/shop/icon_key.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> <a href="/users/register.html" class="b">�����������������</a> � �������� �������������� ����������� � <b>������</b>. </div>
@ComEndReg@
<p><br>
</p>
<form method="post" name="forma_order" action="/done/">
  <table  cellpadding="5" cellspacing="0" width=100% >
    <tr>
      <td align="right"><b>����� �</b> </td>
      <td><input type="text" name=ouid style="width:60px;" value="@orderNum@"  readonly="1">
        <b>/</b>
        <input type="text" style="width:60px;" value="@orderDate@"  readonly="1">
      </td>
    </tr>
    <tr>
      <td align="right">��������</td>
      <td> @orderDelivery@ </td>
    </tr>
    <tr valign="top">
      <td align="right"> E-mail: </td>
      <td><input type="text" name="mail" style="width:300px;" maxlength="30" value="@UserMail@" @formaLock@>
        <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> </td>
    </tr>
    <tr>
      <td align="right" class=tah12>���������� ����: </td>
      <td><input type="text" name="name_person" style="width:300px;" maxlength="30" value="@UserName@" @formaLock@>
        <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> </td>
    </tr>
    <tr>
      <td align="right" >��������: </td>
      <td><input type="text" name="org_name" style="width:300px;" maxlength="100" value="@UserComp@" @formaLock@>
      </td>
    </tr>
    <tr>
      <td align="right" >���: </td>
      <td><input type="text" name="org_inn" style="width:150px;" maxlength="50" value="@UserInn@" @formaLock@>
      </td>
    </tr>
    <tr>
      <td align="right" >���: </td>
      <td><input type="text" name="org_kpp" style="width:150px;" maxlength="50" value="@UserKpp@" @formaLock@>
      </td>
    </tr>
    <tr>
      <td align="right">�������: </td>
      <td><input type="text" name="tel_code" style="width:50px;" maxlength="5" value="@UserTelCode@">
        -
        <input type="text" name="tel_name" style="width:150px;" maxlength="30" value="@UserTel@">
        <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> </td>
    </tr>
    <tr>
      <td align="right">����� ��������: </td>
      <td>��
        <input type="text" name="dos_ot" style="width:50px;" maxlength="5">
        �.&nbsp;&nbsp;&nbsp;
        ��
        <input type="text" name="dos_do" style="width:50px;" maxlength="5">
        �. </td>
    </tr>
    <tr>
      <td align="right" class=tah12>����� � <br>
        ��������������<br>
        ����������: </td>
      <td><textarea style="width:300px; height:100px;" name="adr_name" >@UserAdres@</textarea>
        <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> </td>
    </tr>
    <tr>
      <td align="right">��� ������ <br>
        �������</td>
      <td> @orderOplata@ </td>
    </tr>
    <tr>
      <td></td>
      <td><div  id=allspecwhite><img src="images/shop/comment.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle">������, ���������� <b>��������</b> ����������� ��� ����������.<br>
        </div></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><p><br>
        </p>
        <table align="center">
          <tr>
            <td><img src="images/shop/brick_error.gif" border="0" align="absmiddle"> <a href="javascript:forma_order.reset();" class=link>�������� �����</a></td>
            <td width="20"></td>
            <td><img src="images/shop/brick_go.gif"  border="0" align="absmiddle"> <a href="javascript:OrderChek();" class=link>�������� ������</a></td>
          </tr>
        </table>
        <input type="hidden" name="send_to_order" value="ok" >
        <input type="hidden" name="d" id="d" value="@deliveryId@">
        <input type="hidden" name="nav" value="done">
      </td>
    </tr>
  </table>
</form>
