<div id="ico_user"><span class="red usersError"><span>@usersError@</span></span>
	<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">����</a>
  <div style="clear:both"></div>
  <div id="light" class="white_content">
    <div style="position:relative;" class="usbg">
      <form method="post" name="user_forma" >
        <table width="210"  border="0" cellspacing="0" cellpadding="0" align="center">
          <tr>
            <td valign="top" ><table style="margin-top:30px;" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><h3>�����������</h3></td>
                  <td align="right"><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">�������</a></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td valign="top" height="40" ><input type="text" onFocus="this.value=''" name="login" value="@UserLogin@" class="usf1" >
            </td>
          </tr>
          <tr>
            <td valign="top" height="37" ><input type="password" name="password" onFocus="this.value=''" value="@UserPassword@" class="usf2" >
            </td>
          </tr>
          <tr>
            <td  ><table style="margin-top:10px" width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td  ><table  border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="22"><input id="zap" type="checkbox" value="1" name="safe_users" @UserChecked@></td>
                        <td><label for="zap">���������</label></td>
                      </tr>
                    </table></td>
                  <td  align="right"><a href="/users/sendpassword.html" class="forg2" >������ ������?</a> </td>
                </tr>
              </table>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="50%" height="70" > <a href="/users/register.html" title="�����������">�����������</a> <!--@_facebookAuth@ @_twitterAuth@--> </td>
                  <td width="50%" align="right"><input name="button" type="submit"  onclick="ChekUserForma()" value="" class="usb"  >
                    <input type="hidden" value="1" name="user_enter"></td>
                </tr>
              </table></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
