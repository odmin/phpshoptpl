<form action="/clients/" method="post" name="clients_forma" class="form">
	<label for="mail" class="form__label form__label_required">E-mail:</label>
	<input type="text" name="mail" maxlength="45" id="mail" class="form__input" required>

	<label for="order" class="form__label form__label_required">№ Заказа:</label>
	<input type="text" name="order" maxlength="45" id="order" class="form__input" required>
	
	<div class="cb"></div>

	<span class="form__submit form__submit_cnt">
		<input type="submit" value="Проверить" class="form__button form__button_send">
	</span>
</form>
