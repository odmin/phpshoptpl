<tr>
	<td><a class="highslide" onclick="return hs.expand(this)" href="@cart_image_big@" target="_blank" getparams="null"><img src="@cart_image@" width="55px" border="0" align="absmiddle"></a> <a href="/shop/UID_@cart_id@.html" title="@cart_name@">@cart_name@</a></td>
	<td><form name="forma_cart" method="post" id="forma_cart"><input type="text" value="@cart_num@" size="3" maxlength="5" name="num_new" onchange="this.form.submit()"></td>
	<td align="center">
		<table>
			<tr>
				<td>
						<input type="image" name="edit_num" src="images/shop/cart_add.gif" value="edit" title="Пересчитать" hspace="" >
						<input type=hidden name="id_edit" value="@cart_xid@">
					</form>
				</td>
				<td>
					<form name="forma_cart_del" method="post" id="forma_cart_del">
						<input type="image" name="edit_del" src="images/shop/cart_delete.gif" value="delet" title="Удалить">
						<input type=hidden name="id_delete" value="@cart_xid@">
					</form>			
				</td>
			</tr>
		</table>
	</td>
  <td align="right" class="black"><strong>@cart_price@</strong> @currency@</td>
<td align="right" class="black"><strong>@cart_price_sum@</strong> @currency@</td>
</tr>