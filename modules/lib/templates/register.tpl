<div class="social-auth">	
	@facebookAuth@
	@twitterAuth@
</div>
<form name="users_data" method="post" class="form">
	<div class="text">
		<p class="text__line" id="allspec">
			<img src="images/shop/icon_key.gif" width="16" height="16" border="0" hspace="5" align="absmiddle">
			<strong>�����������</strong>
		</p>
	</div>
	<label for="mail_new" class="form__label form__label_required">����� (e-mail):</label>
	<input type="text" name="mail_new" value='@php echo $_POST["mail_new"]; php@' id="mail_new" class="form__input">
	<input type="hidden" name="login_new" value="space">
	<span class="form__comment">������: sale@profserviz.ru</span>

	<label for="password_new" class="form__label form__label_required">������:</label>
	<input type="Password" name="password_new" id="password_new" value='@php echo $_POST["password_new"]; php@' class="form__input">
	<span class="form__comment">������: Password (�� ����� 6 ������)</span>
	
	<label for="password_new2" class="form__label form__label_required">��������� ������:</label>
	<input type="Password" name="password_new2" value="" id="password_new2" class="form__input">

	<div class="cb"></div>

	<div class="text">
		<p id="allspec">
			<img src="images/shop/icon_user.gif" width="16" height="16" border="0" hspace="5" align="absmiddle">&nbsp;<strong>������ ������</strong>
		</p>
	</div>
	
	<label for="name_new" class="form__label form__label_required">���������� ����:</label>
	<input type="text" name="name_new" value='@php echo $_POST["name_new"]; php@' id="name_new" class="form__input">
	<span class="form__comment">������: �������</span>
	
	<label for="company_new" class="form__label">��������:</label>
	<input type="text" name="company_new" value='@php echo $_POST["company_new"]; php@' id="company_new" class="form__input"> 
	<span class="form__comment">������: ��� &quot;������� ��������&quot;</span>
	
	<label for="inn_new" class="form__label">���:</label>
	<input type="text" name="inn_new" value='@php echo $_POST["inn_new"]; php@' id="inn_new" class="form__input">
	<span class="form__comment">������: 7701779229</span>

	<label for="kpp_new" class="form__label">���:</label>
	<input type="text" name="kpp_new" value='@php echo $_POST["kpp_new"]; php@' id="kpp_new" class="form__input">
	<span class="form__comment">������: 770101001</span>
	
	<label for="tel_code_new" class="form__label">�������:</label>
	<input type="text" name="tel_code_new" value='@php echo $_POST["tel_code_new"]; php@' id="tel_code_new" class="form__input form__input_sm">
	<span class="form__helper"> - </span>
	<input type="text" name="tel_new" value='@php echo $_POST["tel_new"]; php@' class="form__input form__input_sm">

	<label for="adres_new" class="form__label">�����:</label>
	<textarea name="adres_new" rows="5" id="adres_new" class="form__input">@php echo $_POST["adres_new"]; php@</textarea>
	<span class="form__comment">������: �.����������, 2-� ������������ ���., �. 1 �. 4 ��. 22</span>
	
	<span class="form__submit">
		<span class="text">
			<img src="phpshop/captcha.php" alt="captcha" border="0" class="form__captcha" id="captcha">
			<a class="text__link"  title="�������� ��������" href="javascript:CapReload();">�������� ��������</a>
		</span>
		<div class="form__wrapper">
			<label for="key" class="form__label form__label_required form__label_captcha">������� ���, ��������� �� ��������</label>
			<input type="text" name="key" id="key" class="form__input form__input_captcha" required>
		</div>
		<div class="cb"></div>
	</span>

	<span class="form__message">
		<img src="images/shop/comment.gif" alt="">
		������, ���������� <b>�����������</b> ����������� ��� ����������
		<div class="form-errors">@user_error@</div>
	</span>
	<div class="cb"></div>
	<span class="form__submit form__submit_cnt">
		<a href="javascript:CheckNewUserForma()" target="_self" class="button button_yellow">
			�����������
		</a>
	</span>

			<input type="hidden" value="1" name="add_user">
</form>