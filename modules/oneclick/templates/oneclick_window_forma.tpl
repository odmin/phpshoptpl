<div class="product-info__cart">
    <a href="javascript:void(0)" id="oneclick-forma-show"
    title="@productName@" class="button button_buy button_big">
        Купить за 1 клик
    </a>
</div>
<div class="oneclick">

    <div id="mod_oneclick_forma" class="oneclick__wrapper">

        <div class="oneclick__item">

            <a id="oneclick-forma-hide"  class="oneclick__close" 
            href="javascript:void(0)">закрыть</a>

            <form action="@ShopDir@/oneclick/" method="post" onsubmit="return checkModOneClickForma();" class="oneclick-form">
                <div class="grid">
                    <div class="grid__col2">
                        <label class="oneclick-form__label" for="oneclick_mod_name">Имя:</label>
                    </div>
                    <div class="grid__col3">
                        <input type="text" name="oneclick_mod_name" id="oneclick_mod_name" size="15" class="oneclick-form__input">
                    </div>
                </div>

                <div class="grid">
                    <div class="grid__col2">
                        <label class="oneclick-form__label" for="oneclick_mod_tel">Телефон:</label>
                    </div>
                    <div class="grid__col3">
                        <input type="text" name="oneclick_mod_tel" id="oneclick_mod_tel" size="15" class="oneclick-form__input">
                    </div>
                </div>

                <div class="cb"></div>
                <input type="hidden" name="oneclick_mod_product_id" value="@productUid@">
                <div class="oneclick-form__send">
                    <input type="submit" name="oneclick_mod_send" value="Быстрый заказ" class="button button_buy">
                </div>
            </form>
        </div>

    </div>

</div>
<script>
    function checkModOneClickForma(){
        if(document.getElementById('oneclick_mod_name').value == "" || document.getElementById('oneclick_mod_tel').value == "")
            return false;
    }
    function formShow(){
        var form = document.getElementById('mod_oneclick_forma');
        form.style.display='block';
    }
    function formHide(){
        var form = document.getElementById('mod_oneclick_forma');
        form.style.display='none';
    }
    var oneclickBtn = document.getElementById('oneclick-forma-show');
    var oneclickBtnClose = document.getElementById('oneclick-forma-hide');
    oneclickBtn.addEventListener('click', formShow, false);
    oneclickBtnClose.addEventListener('click', formHide, false);
</script>