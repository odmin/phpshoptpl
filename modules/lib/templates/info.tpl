<div id="allspec" class="form-errors">

	@user_error@

</div>
<div class="text">
	<p><img src="images/shop/rosette.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> <strong>Статус:</strong> @user_status@</p>
</div>

<form name="users_password" method="post" class="form">
	<div class="text">
		<p class="text__line" id="allspec">
			<img src="images/shop/icon_key.gif" width="16" height="16" border="0" hspace="5" align="absmiddle">
			<strong>Авторизация</strong>
		</p>
	</div>
	<label for="login_new" class="form__label form__label_required">Логин:</label>
	<input type="text" name="login_new" value='@user_login@' id="login_new" class="form__input" required>

	<label for="password_new" class="form__label form__label_required">Пароль:</label>
	<input type="Password" name="password_new" id="password_new" value='@user_password@' class="form__input" required>
	<span id="password" style="display: none;">
		<label for="password_new2" class="form__label form__label_required">Повторите пароль:</label>
		<input type="Password" name="password_new2" class="form__input">
	</span>

	<label for="password_chek" class="form__label form__label_required">Изменить логин | пароль:</label>
	<input type="checkbox" id="password_chek" value="1" name="password_chek" onclick="DispPasDiv()" class="form__checkbox">
	<input type="hidden" value="1" name="update_password">
	<input type="button" value="Изменить" onclick="UpdateUserPassword()" class="button button_buy">
	<div class="cb"></div>
</form>

<form name="users_data" method="post" class="form">
	<div class="text">
		<p class="text__line" id="allspec">
			<img src="images/shop/icon_user.gif" width="16" height="16" border="0" hspace="5" align="absmiddle">
			<strong>Личные данные</strong>
		</p>
	</div>

	<label for="name_new" class="form__label form__label_required">Контактное лицо:</label>
	<input type="text" name="name_new" value="@user_name@" id="name_new" class="form__input">

	<label for="mail_new" class="form__label form__label_required">E-mail:</label>
	<input type="text" name="mail_new" value="@user_mail@" id="mail_new" class="form__input">

	<label for="company_new" class="form__label">Компания:</label>
	<input type="text" name="company_new" value="@user_company@" id="company_new" class="form__input">

	<label for="inn_new" class="form__label">ИНН:</label>
	<input type="text" name="inn_new" value="@user_inn@" id="inn_new" class="form__input">

	<label for="kpp_new" class="form__label">КПП:</label>
	<input type="text" name="kpp_new" value="@user_kpp@" id="kpp_new" class="form__input">

	<div class="cb"></div>
	<label for="tel_code_new" class="form__label">Телефон:</label>
	<input type="text" name="tel_code_new" value='@user_tel_code@' id="tel_code_new" class="form__input form__input_sm">
	<span class="form__helper"> - </span>
	<input type="text" name="tel_new" value='@user_tel@' class="form__input form__input_sm">

	<label for="adres_new" class="form__label">Адрес:</label>
	<textarea class="form__input" name="adres_new" id="adres_new" rows="5">@user_adres@</textarea>

	<span class="form__message">
		<img src="images/shop/comment.gif" alt="">
		Данные, отмеченные <b>звездочками</b> обязательны для заполнения
	</span>

	<div class="cb"></div>
	<input type="hidden" value="1" name="update_user">
	<span class="form__submit form__submit_cnt">
		<input type="button" value="Изменить данные" onclick="UpdateUserForma()" class="button button_buy">
	</span>
</form>