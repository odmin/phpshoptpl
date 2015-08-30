<div class="grid cart-table cart-table_body">
	<div class="grid__col3 grid__col_tablet4 grid__col_phone2">
		<div class="grid">
			<div class="grid__col1 cart-table__image">
				<a class="highslide" onclick="return hs.expand(this)" href="@cart_image_big@" target="_blank" getparams="null">
					<img src="@cart_image@" width="55px" border="0" align="absmiddle">
				</a>
			</div>
			<div class="grid__col4">
				<p class="cart-content">
					<a href="/shop/UID_@cart_id@.html" title="@cart_name@" class="cart__link">@cart_name@</a>
				</p>
			</div>
		</div>
		<div class="cb"></div>
	</div>
	<div class="grid__col1 grid__col_tablet2 grid__col_phone1">
		<form name="forma_cart" method="post" id="forma_cart">
			<table class="cart-rule cart-rule_data">
				<tbody>
					<tr>
						<td align="right">
							<input type="text" value="@cart_num@" size="3" maxlength="5" name="num_new" onchange="this.form.submit()" class="cart__textinput">
						</td>
						<td align="right">
							<input type="image" name="edit_num" src="images/shop/cart_add.gif" value="edit" title="Пересчитать" hspace="" >
							<input type="hidden" name="id_edit" value="@cart_xid@">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<div class="grid__col1 grid__col_tablet6 grid__col_phone3">
		<table class="cart-rule cart-rule_data">
			<tbody>
				<tr>
					<td width="20%">
						<form name="forma_cart_del" method="post" id="forma_cart_del">
							<!-- <label for="edit_del" class="show-tablet">Убрать из корзины </label> -->
							<input type="image" name="edit_del" id="edit_del" src="images/shop/cart_delete.gif" value="delet" title="Удалить">
							<input type="hidden" name="id_delete" value="@cart_xid@">
						</form>
					</td>
					<td width="40%" align="right"><span class="show-tablet">Цена: </span><strong>@cart_price@</strong>&nbsp;@currency@.</td>
					<td width="40%" align="right"><span class="show-tablet">Сумма: </span><strong>@cart_price_sum@</strong>&nbsp;@currency@.</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>