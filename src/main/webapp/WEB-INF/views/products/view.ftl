<#import "/spring.ftl" as spring />
<#macro main>
	<form class="form-horizontal">
		<fieldset>
			<legend>View Product</legend>
			<div class="control-group">
				<label class="control-label">Id</label>
				<div class="controls"><label class="checkbox">${product.id}</label> </div>
			</div>
			<div class="control-group">
				<label class="control-label">Name</label>
				<div class="controls"><label class="checkbox">${product.name}</label></div>
			</div>
		</fieldset>
	</form>
</#macro>

<#macro sidebar>
	<#include "item_sidebar.ftl"/>
</#macro>

<#include "../layout.ftl">
