@php
// ������ �������� �������� �����
php@
<div class="general__area">
	
	<div class="box-shop">

		<div class="breadcrumbs">
			<a href="/">�������</a> / <a href="/gbook/">������</a>
		</div>

		<h1 class="box-shop__title">����� ������</h1>

		<div align="center" style="padding-bottom:10px;"> <strong	style="font-size:14px; color:#FF0000">@Error@</strong></div>

		<form method="post" name="forma_gbook" class="form">
			
			<label for="name_new" class="form__label form__label_required">���</label>
			<input type="text" name="name_new" maxlength="45" id="name_new" class="form__input" required>
			<label for="mail_new" class="form__label">E-mail</label>
			<input type="text" name="mail_new" maxlength="45" id="mail_new" class="form__input">
			<label for="tema_new" class="form__label form__label_required">���� ��� � ������</label>
			<textarea name="tema_new" maxlength="60" class="form__input" required></textarea>
			<label for="otsiv_new" class="form__label form__label_required">�����</label>
			<textarea name="otsiv_new" maxlength="1000"  class="form__input" required></textarea>
			<div class="cb"></div>
			<span class="form__message">
				<img src="images/shop/comment.gif" alt="">
				������, ���������� <b>�����������</b> ����������� ��� ����������
			</span>
			<span class="form__submit">
				<img src="phpshop/captcha.php" alt="captcha" border="0" class="form__captcha">
				<div class="form__wrapper">
					<label for="key" class="form__label form__label_required form__label_captcha">������� ���, ��������� �� ��������</label>
					<input type="text" name="key" id="key" class="form__input form__input_captcha" required>
				</div>
				<div class="cb"></div>
			</span>
			<input type="Hidden" name="send_gb">

			<span class="form__submit form__submit_cnt">

				<a href="javascript:forma_gbook.reset();" class="form__button form__button_clear">�������� �����</a>

				<a href="javascript:Fchek();" class="form__button form__button_send">�������� �����</a>
				
			</span>

			<input type="hidden" name="send_gb" value="ok" >
			
		</form>

	</div>

</div>