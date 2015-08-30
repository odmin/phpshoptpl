@php
// Шаблон страницы Новости
php@
<div class="news">

	<div class="newsDate news__date">@newsData@</div>

	<div class="newsName2">
		<a href="/news/ID_@newsId@.html" title="@newsZag@" class="news__link">
			<h2 class="news__title">@newsZag@</h2>
		</a>
	</div>

	<div class="news__content">
		<div class="usercontent">
			@newsKratko@
		</div>
	</div>

	<div class="news__detail">
		<a href="/news/ID_@newsId@.html" target="_self" title="@newsZag@" class="button button_buy">
			Читать полностью
		</a>
	</div>

</div>