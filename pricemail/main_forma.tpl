<div class="page_nava">
    <div> <a href="/">�������</a> / ������������ �� ���� </div>
</div>
<h2>������������ �� ���� </h2>
<p><strong  style="font-size:14px; color:#FF0000"> @Error@</strong></p>
<div align="center" style="padding:10px">
    <table>
        <tr>
            <td><table cellpadding="0" cellspacing="0" border="0" class="tovarDivImg2" align="left">
                    <tr>
                        <td align="center" valign="middle"><img src="@productImg@" alt="" border="0"></td>
                    </tr>
                </table></td>
            <td style="padding:10px"><h1>@productName@</h1>
                <TABLE  BORDER=0 CELLPADDING=0 CELLSPACING=0>
                    <TR>
                        <TD align="center" class="center"><strong class=price > @productPrice@ @productValutaName@</strong><br>
                            <font class=black>@productPriceRub@</font> </TD>
                    </TR>
                </TABLE></td>
        </tr>
    </table>
</div>
<div class="plashka_center">
    <div class="plashka_zag" >������ ������</div>
</div>
<p></p>
<form method="post" name="forma_pricemail">
    <table  cellpadding="5" cellspacing="0" width=98% >
        <tr valign="top">
            <td align="right"> E-mail: </td>
            <td><input type="text" name="mail" id="mail" style="width:250px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F " maxlength="30" value="@UserMail@" @formaLock@>
                <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> </td>
        </tr>
        <tr>
            <td align="right" class=tah12>���������� ����: </td>
            <td><input type="text" name="name_person" id="name" style="width:250px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F " maxlength="30" value="@UserName@" @formaLock@>
                <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> </td>
        </tr>
        <tr>
            <td align="right" >������ �� �����<br>
                � ������� �����: </td>
            <td><input type="text" name="link_to_page" id="links" value="@UserLink@" style="width:250px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F " maxlength="100" >
                <img src="images/shop/flag_green.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle"> </td>
        </tr>
        <tr>
            <td align="right" >��������: </td>
            <td><input type="text" name="org_name" style="width:250px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F " maxlength="100" value="@UserComp@" @formaLock@>
            </td>
        </tr>
        <tr>
            <td align="right">�������: </td>
            <td><input type="text" name="tel_code" style="width:50px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F " maxlength="5" value="@UserTelCode@">
                -
                <input type="text" name="tel_name" style="width:150px; height:18px; font-family:tahoma; font-size:11px ; color:#4F4F4F " maxlength="30" value="@UserTel@">
            </td>
        </tr>
        <tr>
            <td align="right" class=tah12>��������������<br>
                ����������: </td>
            <td><textarea style="width:250px; height:100px; font-family:tahoma; font-size:11px ; color:#4F4F4F " name="adr_name" >@UserAdres@</textarea>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><div  id=allspecwhite><img src="images/shop/comment.gif" alt="" width="16" height="16" border="0" hspace="5" align="absmiddle">������, ���������� <b>��������</b> ����������� ��� ����������.<br>
                </div></td>
        </tr>
        <tr>
            <td align="center"><IMG alt="" src="phpshop/captcha.php" id="captcha" border=0>
                <br>
                <a class="b" title="�������� ��������" href="javascript:CapReload();">�������� ��������</a>
            </td>
            <td style="padding-left:10px">������� ���, ��������� �� ��������:<BR>
                <INPUT style="WIDTH: 220px"  name="key" id="key"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><p><br>
                </p>
                <table align="center">
                    <tr>
                        <td><img src="images/shop/brick_error.gif" border="0" align="absmiddle"> <a href="javascript:forma_pricemail.reset();" class=link>�������� �����</a></td>
                        <td width="20"></td>
                        <td><img src="images/shop/brick_go.gif"  border="0" align="absmiddle"> <a href="javascript:CheckPricemail();" class=link>��������� ���������</a></td>
                    </tr>
                </table>
                <input type="hidden" name="send_price_link" value="ok">
            </td>
        </tr>
    </table>
</form>
