<div class="box-content-shadow">
<div class="page_nava">
  <div> <a href="/">�������</a> / �����-���� </div>
</div>
<h2>�����-����</h2>
<p>
<form>
  @searchPageCategory@
  <input type="button" value="��������" onclick="DoPriceSort();" class="ok">
</form>
</p>
<div class="pod_cart" style="">
  <table class="standart">
    <tr>
      <td width="100"></td>
      <td width="150"><a href="/price/CAT_ALL.html" title="������� ��� �������">������� ��� �������</a> </td>
      <td width="150"><a href="javascript:GetAllForma('@PageCategory@')" title="����� � ���������">����� � ���������</a> </td>
      <td width="150"><a href="#" onclick="window.open('phpshop/forms/priceprint/print.html?catId=@PageCategory@')" title="�������� �����">�������� �����</a> </td>
      <td width="100"></td>
    </tr>
    <tr>
      <td></td>
      <td><a href="#" onclick="window.open('/files/priceSave.php?catId=@PageCategory@')" title="Excel �����">Excel �����</a> </td>
      <td><a href="#" onclick="window.open('/files/priceSave.php?catId=@PageCategory@&gzip=true')" title="Excel ����� GZIP">Excel ����� GZIP</a> </td>
      <td><a href="/files/onlineprice/" target="_blank" title="������������� �����">������������� �����</a></td>
      <td></td>
    </tr>
  </table>
</div>
<div id="pri">@productPageDis@</div>
</div>
