{$meta_title = 'Управление лицензией' scope=root}
<form method="post" enctype="multipart/form-data">
	<input type="hidden" name="session_id" value="{$smarty.session.id}">

	<div class="form-row">
		<label for="" class="form-label">Статус</label>
		<label for="" class="form-label license-state-{if !$license->valid}in{/if}valid">{if !$license->valid}не{/if}действительна</label>
	</div>
		
	{if $license->valid}
		{if $license->expiration != '*'}
		<div class="form-row">
			<label for="" class="form-label">Срок действия</label>
			<label for="" class="form-label">до {$license->expiration}</label>
		</div>
		{/if}

		<div class="form-row">
			<label for="" class="form-label">Для домен{$license->domains|count|plural:'а':'ов'}</label>
			<span class="license-domains">
				{foreach $license->domains as $d}<p>{$d}</p>{/foreach}
			</span>
		</div>
	{/if}
	
	<div class="form-row">
		<label for="" class="form-label">Код лицензии</label>
		<textarea name="license" class="form-input" data-width="lg" rows="11">{$config->license|escape}</textarea>
	</div>

	<div class="form-row">
		<label for="" class="form-label">&nbsp;</label>
		<a href="http://simplacms.ru/check?domain={$smarty.server.HTTP_HOST|escape}" class="action-link" target="_blank">Проверить лицензию</a>
	</div>

	<p>&nbsp;</p>
	
	<div class="license">
		<p class="block-title">Лицензионное соглашение</p>
		
		<p>Настоящее пользовательское соглашение (далее&nbsp;&mdash; Соглашение) является юридическим соглашением между Пользователем системы управления сайтами &laquo;Simpla&raquo; (далее&nbsp;&mdash; Продуктом) и&nbsp;Пикусовым&nbsp;Д.&nbsp;С. (далее&nbsp;&mdash; Автором).</p>
		<p>Соглашение относится ко&nbsp;всем распространяемым версиям или модификациям программного Продукта.</p>
		<p>&nbsp;</p>
		<p data-number="1">Все положения Соглашения распространяются как на&nbsp;Продукт в&nbsp;целом, так и&nbsp;на&nbsp;его отдельные компоненты, за&nbsp;исключением компонентов, описанных в&nbsp;п.7 данного Соглашения.</p>
		<p data-number="2">Соглашение вступает в&nbsp;силу непосредственно в&nbsp;момент получения Пользователем копии Продукта посредством электронных средств передачи данных либо на&nbsp;физических носителях.</p>
		<p data-number="3">Соглашение дает Пользователю право использовать Продукт в&nbsp;рамках одного сайта (интернет-магазина), который работает в&nbsp;пределах одного полного доменного имени на&nbsp;протяжении двух недель с&nbsp;момента вступления в&nbsp;силу Соглашения.</p>
		<p data-number="4">Автор не&nbsp;несет ответственность за&nbsp;какие-либо убытки и/или ущерб (в&nbsp;том числе, убытки в&nbsp;связи недополученной коммерческой выгодой, прерыванием коммерческой и&nbsp;производственной деятельности, утратой данных), возникающие в&nbsp;связи с&nbsp;использованием или невозможностью использования Продукта, даже если Автор был уведомлен о&nbsp;возможном возникновении таких убытков и/или ущерба.</p>
		<p data-number="5">Продукт поставляется на&nbsp;условиях &laquo;как есть&raquo; без предоставления гарантий производительности, покупательной способности, сохранности данных, а&nbsp;также иных явно выраженных или предполагаемых гарантий. Автор не&nbsp;несёт какой-либо ответственности за&nbsp;причинение или возможность причинения вреда Пользователю, его информации или его бизнесу вследствие использования или невозможности использования Продукта.</p>
		<p data-number="6">Автор не&nbsp;несёт ответственность, связанную с&nbsp;привлечением Пользователя или третьих лиц к&nbsp;административной или уголовной ответственности за&nbsp;использование Продукта в&nbsp;противозаконных целях (включая, но&nbsp;не&nbsp;ограничиваясь, продажей через Интернет магазин объектов, изъятых из&nbsp;оборота или добытых преступным путём, предназначенных для разжигания межрасовой или межнациональной вражды и&nbsp;т.д.).</p>
		<p data-number="7">Продукт содержит компоненты, на&nbsp;которые не&nbsp;распространяется действие настоящего Соглашения. Эти компоненты предоставляются и&nbsp;распространяются в&nbsp;соответствии с&nbsp;собственными лицензиями. Таковыми компонентами являются:</p>
		
		<ul class="license-list">
			<li>Визуальный редактор TinyMCE</li>
			<li>Файловый менеджер SMExplorer</li>
			<li>Менеджер изображений SMImage</li>
			<li>Редактор кода Codemirror</li>
			<li>Скрипт просмотра изображений EnlargeIt</li>
		</ul>

		<p data-number="8">Пользователь не&nbsp;имеет права продавать, распространять или использовать Продукт без согласия Автора.<p>
		<p data-number="9">Пользователь имеет право модифицировать Продукт по&nbsp;своему усмотрению. При этом последующее использование Продукта должно осуществляться в&nbsp;соответствии с&nbsp;данным Соглашением и&nbsp;при условии сохранения всех авторских прав.<p>
		<p data-number="10">Автор оставляет за&nbsp;собой право в&nbsp;любое время изменять условия Соглашения без предварительного уведомления.<p>
		<p data-number="11">Получение экземпляра Продукта, его использование и/или хранение автоматически означает<p>
	
		<ul class="license-list">
			<li>осведомленность Пользователя о&nbsp;содержании Соглашения</li>
			<li>принятие его положений</li>
			<li>выполнение условий данного Соглашения</li>
		</ul>

		<p>&nbsp;</p>
		
		<p>Официальный сайт Продукта: <a href="//simplacms.ru/">simplacms.ru</a></p>
	</div>
	
	<div class="action-panel">
		<input class="btn" type="submit" value="Сохранить">
	</div>
</form>