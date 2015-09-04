@php
// Шаблон формы персональных данных в корзине
php@
@ComStartReg@

<div class="text" id="allspecwhite">
	<p class="">
		<img src="images/shop/icon_key.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> 
		<a href="/users/register.html" class="text__link">Зарегистрируйтесь</a> <strong>(Не обязательно)</strong> Вы всегда сможете иметь доступ к <strong>истории покупок.</strong> Скидки станут <strong>накопительными.</strong>
	</p>
</div>

@ComEndReg@

<form method="post" name="forma_order" action="/done/" class="form">
	
	<label for="ouid" class="form__label">Заказ №</label>
	<input type="text" name="ouid" value="@orderNum@" readonly="1" class="form__input form__input_sm" id="ouid">
	<span class="form__helper"> / </span> 
	<input type="text" value="@orderDate@" readonly="1" class="form__input form__input_sm">

	<label for="dostavka_metod" class="form__label form__label_required"><strong>Доставка</strong></label>
	<span class="form__select">
		@orderDelivery@
	</span>

	<label for="mail" class="form__label form__label_required"><strong>E-mail:</strong></label>
	<input type="text" name="mail" maxlength="30" value="@UserMail@" @formaLock@ id="mail" required class="form__input">
	<span class="form__comment">Пример: sale@profserviz.ru</span>

	<label for="name_person" class="form__label form__label_required"><strong>Контактное лицо:</strong></label>
	<input type="text" name="name_person" maxlength="30" value="@UserName@" @formaLock@ id="name_person" required class="form__input">
	<span class="form__comment">Пример: Наталья (Для регионов России ФИО полностью)</span>

	<label for="org_name" class="form__label">Компания:</label>
	<input type="text" name="org_name" maxlength="100" value="@UserComp@" @formaLock@ id="org_name" class="form__input"> 
	<span class="form__comment">Пример: ООО &quot;Чешский хрусталь&quot;</span>

	<label for="org_inn" class="form__label">ИНН:</label>
	<input type="text" name="org_inn" maxlength="50" value="@UserInn@" @formaLock@ id="org_inn" class="form__input">
	<span class="form__comment">Пример: 7701779229</span>
	
	<label for="org_kpp" class="form__label">КПП:</label>
	<input type="text" name="org_kpp" maxlength="50" value="@UserKpp@" @formaLock@ id="org_kpp" class="form__input"> 
	<span class="form__comment">Пример: 770101001</span>
	<div class="cb"></div>
	<label for="tel_code" class="form__label form__label_required"><strong>Телефон:</strong></label>
	<input type="text" name="tel_code" maxlength="5" value="@UserTelCode@" class="form__input form__input_sm" required id="tel_code">
	<span class="form__helper"> - </span>
	<input type="text" name="tel_name" maxlength="30" value="@UserTel@" class="form__input form__input_sm" required>
	<span class="form__comment">Пример: 8495-7895221</span>
	<div class="cb"></div>
	<label for="dos_ot" class="form__label">Время доставки:</label>
	<span class="form__helper">от </span>
	<input type="text" name="dos_ot" maxlength="5" class="form__input form__input_sm" id="dos_ot">
	<span class="form__helper"> ч.&nbsp;до </span>
	<input type="text" name="dos_do" maxlength="5" class="form__input form__input_sm">
	<span class="form__helper"> ч.</span>
	<span class="form__comment">Пример: от <strong>15</strong> ч. до <strong>22</strong> ч.</span>

	<label for="adr_name" class="form__label form__label_required"><strong>Адрес доставки:</strong></label>
	<textarea name="adr_name" id="adr_name" required class="form__input" rows="5">@UserAdres@</textarea>
	<span class="form__comment">Пример: м.Варшавская, 2-й Котляковский пер., д. 1 c.1</span>
	
	<label for="dos_ot" class="form__label">Тип оплаты покупки</label>
	<span class="form__select">
		@orderOplata@
	</span>

	<span class="form__message">
		<img src="images/shop/comment.gif" alt="">
		Данные, отмеченные <b>звездочками</b> <img src="images/shop/flag_green.gif" width="16" height="16" border="0" hspace="5" align="absmiddle"> обязательны для заполнения
	</span>
	<span class="form__submit form__submit_cnt">
		<a href="javascript:OrderChek();" class="button button_green">
			Оформить заказ
		</a>
		<p>
			Нажимая кнопку "Оформить заказ", я подтверждаю свою дееспособность, даю согласие на обработку персональных данных в соответствии с указанной "<a href="/page/privacypolicy.html" title="Политика Конфиденциальности" target="_blank">Политикой Конфиденциальности</a>" и соглашаюсь с условиями "<a href="/page/dogovor-oferta.html" title="Договор-оферты" target="_blank">Договора-оферты</a>".
		</p>
	</span>

	<input type="hidden" name="send_to_order" value="ok" >
	<input type="hidden" name="d" id="d" value="@deliveryId@">
	<input type="hidden" name="nav" value="done">
	<div class="cb"></div>
</form>