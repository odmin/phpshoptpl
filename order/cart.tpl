<div class="grid cart-table cart-table_caption">
	<div class="grid__col3 grid__col_phone2">
		<p class="cart-content"><strong>Наименование</strong></p>
	</div>
	<div class="grid__col1 grid__col_phone1 cart-table__right">
		<p class="cart-content">
			<strong>Кол-во</strong>
		</p>
	</div>
	<div class="grid__col1 grid__col_phone2">
		<table class="cart-rule">
			<tbody>
				<tr>
					<td width="20%"><strong>&nbsp;</strong></td>
					<td width="40%" align="right"><strong>Цена</strong></td>
					<td width="40%" align="right"><strong>Сумма</strong></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
@display_cart@
<div class="grid cart-table cart-table_footer">
	<div class="grid__col3 grid__col_phone1">
		<p class="cart-content"><strong>Итого:</strong></p>
	</div>
	<div class="grid__col1 grid__col_phone1 cart-table__right">
		<p class="cart-content"><strong>@cart_num@</strong> (шт.)</p>
	</div>
	<div class="grid__col1 grid__col_phone1 cart-table__right">
			<strong>@cart_sum@ @currency@.</strong>
	</div>
</div>
<div class="cb"></div>

<table border="0" width="99%" cellpadding="0" cellspacing="3" align="center" class="cart cart_after">

	<tr style="visibility:hidden;display:none;">

		<td colspan="4" valign="top">Вес товаров:</td>

		<td class=black align="right"><span id="WeightSumma">@cart_weight@</span> гр. </td>

	</tr>

	<tr>

		<td colspan="4" valign="top">Скидка: (На товары по акции, скидка не распространяется)</td>

		<td align="right"><span id="SkiSumma">@discount@</span>&nbsp;%</td>

	</tr>

	<tr>

		<td colspan="4" valign="top">Доставка:</td>

		<td class=black align="right"><span id="DosSumma">@delivery_price@</span>&nbsp; @currency@</td>

	</tr>

	<tr>

		<td>

			К оплате с учетом скидки:

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
