<div style="clear:both"></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="120"><table cellpadding="0" cellspacing="0" border="0" class="tovarDivImg1" align="left" width="100%">
        <tr>
          <td align="center" valign="middle"><a class="highslide" onclick="return hs.expand(this)" href="@productImgBigFoto@" target="_blank" getParams="null" title="@productName@"><img src="@productImg@" lowsrc="images/shop/no_photo.gif"  onerror="NoFoto(this,'@pathTemplate@')" onload="EditFoto(this,@productImgWidth@)" alt="@productName@" title="@productName@" border="0"></a>
            <div class=highslide-caption>@productName@</div></td>
        </tr>
      </table></td>
    <td valign="top" ><div class="tovarDivName1" style=" text-align: left; padding:10px 0px" ><a href="/shop/UID_@productUid@.html" title="@productName@"><strong>@productName@</strong></a></div>
      <div class="tovarDivContent1" style=" text-align: left; " >@productDes@</div></td>
    <td width="120"><div class="prcent">
        <table align="center" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="50">@ComStart@
              <div class="tovarDivPrice1" > <span>@productPrice@ @productValutaName@</span> </div>
              <div align="center"><span class="tovarDivOldPrice1" title="����: @productName@">@productPriceRub@</span></div>
              @ComEnd@</td>
          </tr>
        </table>
      </div>
      <div style="clear:both;"></div>
      <div class="tovarDivAdd1">
        <div class="tovarDivAdd3">
          <!-- ���� ������ -->
          @ComStartCart@<a href="javascript:AddToCart(@productUid@)" title="������ @productName@">@productSale@</a>@ComEndCart@
          <div style="clear:both; height:10px"></div>
          <!-- ���� ������ -->
          <!-- ���� ��������� -->
          @ComStartNotice@<a href="/users/notice.html?productId=@productUid@" title="@productNotice@">@productNotice@</a>@ComEndNotice@
          <!-- ���� ��������� -->
        </div>
        <div class="tovarDivAdd2"><a href="javascript:AddToCompare(@productUid@)" title="�������� @productName@">��������</a></div>
      </div></td>
  </tr>
</table>
