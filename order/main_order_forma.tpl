@php
// ������ ����� ������������ ������ � �������
php@
@ComStartReg@

<div class="text" id="allspecwhite">
	<p class="">
		<img src="images/shop/icon_key.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> 
		<a href="/users/register.html" class="text__link">�����������������</a> <strong>(�� �����������)</strong> �� ������ ������� ����� ������ � <strong>������� �������.</strong> ������ ������ <strong>��������������.</strong>
	</p>
</div>

@ComEndReg@

<form method="post" name="forma_order" action="/done/" class="form">
	
	<label for="ouid" class="form__label">����� �</label>
	<input type="text" name="ouid" value="@orderNum@" readonly="1" class="form__input form__input_sm" id="ouid">
	<span class="form__helper"> / </span> 
	<input type="text" value="@orderDate@" readonly="1" class="form__input form__input_sm">

	<label for="dostavka_metod" class="form__label form__label_required"><strong>��������</strong></label>
	<span class="form__select">
		@orderDelivery@
	</span>

	<label for="mail" class="form__label form__label_required"><strong>E-mail:</strong></label>
	<input type="text" name="mail" maxlength="30" value="@UserMail@" @formaLock@ id="mail" required class="form__input">
	<span class="form__comment">������: sale@profserviz.ru</span>

	<label for="name_person" class="form__label form__label_required"><strong>���������� ����:</strong></label>
	<input type="text" name="name_person" maxlength="30" value="@UserName@" @formaLock@ id="name_person" required class="form__input">
	<span class="form__comment">������: ������� (��� �������� ������ ��� ���������)</span>

	<label for="org_name" class="form__label">��������:</label>
	<input type="text" name="org_name" maxlength="100" value="@UserComp@" @formaLock@ id="org_name" class="form__input"> 
	<span class="form__comment">������: ��� &quot;������� ��������&quot;</span>

	<label for="org_inn" class="form__label">���:</label>
	<input type="text" name="org_inn" maxlength="50" value="@UserInn@" @formaLock@ id="org_inn" class="form__input">
	<span class="form__comment">������: 7701779229</span>
	
	<label for="org_kpp" class="form__label">���:</label>
	<input type="text" name="org_kpp" maxlength="50" value="@UserKpp@" @formaLock@ id="org_kpp" class="form__input"> 
	<span class="form__comment">������: 770101001</span>
	<div class="cb"></div>
	<label for="tel_code" class="form__label form__label_required"><strong>�������:</strong></label>
	<input type="text" name="tel_code" maxlength="5" value="@UserTelCode@" class="form__input form__input_sm" required id="tel_code">
	<span class="form__helper"> - </span>
	<input type="text" name="tel_name" maxlength="30" value="@UserTel@" class="form__input form__input_sm" required>
	<span class="form__comment">������: 8495-7895221</span>
	<div class="cb"></div>
	<label for="dos_ot" class="form__label">����� ��������:</label>
	<span class="form__helper">�� </span>
	<input type="text" name="dos_ot" maxlength="5" class="form__input form__input_sm" id="dos_ot">
	<span class="form__helper"> �.&nbsp;�� </span>
	<input type="text" name="dos_do" maxlength="5" class="form__input form__input_sm">
	<span class="form__helper"> �.</span>
	<span class="form__comment">������: �� <strong>15</strong> �. �� <strong>22</strong> �.</span>

	<label for="adr_name" class="form__label form__label_required"><strong>����� ��������:</strong></label>
	<textarea name="adr_name" id="adr_name" required class="form__input" rows="5">@UserAdres@</textarea>
	<span class="form__comment">������: �.����������, 2-� ������������ ���., �. 1 c.1</span>
	
	<label for="dos_ot" class="form__label">��� ������ �������</label>
	<span class="form__select">
		@orderOplata@
	</span>

	<span class="form__message">
		<img src="images/shop/comment.gif" alt="">
		������, ���������� <b>�����������</b> <img src="images/shop/flag_green.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> ����������� ��� ����������
	</span>
	<span class="form__submit form__submit_cnt">
		<a href="javascript:OrderChek();" class="button button_green">
			�������� �����
		</a>
		<p>
			������� ������ "�������� �����", � ����������� ���� ��������������, ��� �������� �� ��������� ������������ ������ � ������������ � ��������� "<a href="/page/privacypolicy.html" title="�������� ������������������" target="_blank">��������� ������������������</a>" � ���������� � ��������� "<a href="/page/dogovor-oferta.html" title="�������-������" target="_blank">��������-������</a>".
		</p>
	</span>

	<input type="hidden" name="send_to_order" value="ok" >
	<input type="hidden" name="d" id="d" value="@deliveryId@">
	<input type="hidden" name="nav" value="done">
	<div class="cb"></div>
</form>