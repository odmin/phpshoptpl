<table border=0 width=99% cellpadding=0 cellspacing=3>

    <tr>

        <td ><strong>������������</strong></td>

        <td width=50><strong>���-��</strong></td>

        <td width=50><strong>��������</strong></td>

        <td width=70 align="right" colspan=""><strong>����</strong></td>

        <td width=70 align="right" colspan=""><strong>�����</strong></td>

    </tr>

    <tr>

        <td colspan="5">

            <img src="images/shop/break.gif" width="100%" height="1" border="0">

        </td>

    </tr>

    @display_cart@

    <tr>

        <td colspan="5">

            <img src="images/shop/break.gif" width="100%" height="1" border="0">

        </td>

    </tr>

    <tr style="padding-top:10px">

        <td ><b>�����:</b></td>

        <td>

            <strong>@cart_num@</strong> (��.)

        </td>

        <td></td>

        <td></td>

        <td align="right">

            @cart_sum@ @currency@<br>

        </td>

    </tr>

    <tr>

        <td colspan="5">

            <img src="images/shop/break.gif" width="100%" height="1" border="0">

        </td>

    </tr>

</table>

<table border="0" width="99%" cellpadding="0" cellspacing="3" align="center">

    <tr style="visibility:hidden;display:none;">

        <td colspan="4" valign="top">��� �������:</td>

        <td class=black align="right"><span id="WeightSumma">@cart_weight@</span> ��. </td>

    </tr>

    <tr>

        <td colspan="4" valign="top">������: (�� ������ �� �����, ������ �� ����������������)</td>

        <td align="right"><span id="SkiSumma">@discount@</span>&nbsp;%</td>

    </tr>

    <tr>

        <td colspan="4" valign="top">��������:</td>

        <td class=black align="right"><span id="DosSumma">@delivery_price@</span>&nbsp; @currency@</td>

    </tr>

    <tr>

        <td>

            � ������ � ������ ������:

        </td>

        <td class=style2>

        </td>

        <td colspan=3 align="right" class=black>

            <b><span id="TotalSumma">@total@</span></b> @currency@</td>

    </tr>

</table>

<input type="hidden" id="OrderSumma" name="OrderSumma"  value="@cart_sum@">

<script>

    if(window.document.getElementById('num')){

        window.document.getElementById('num').innerHTML='@cart_num@';

        window.document.getElementById('sum').innerHTML='@cart_sum@';

    }

</script>