<#import "/spring.ftl" as spring />
<#macro main>
	<form class="form-horizontal">
		<fieldset>
			<legend>Edit Product</legend>
			<div class="control-group">
				<label class="control-label">Id</label>
				<div class="controls">${product.id}</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="input01">Name</label>
				<div class="controls">
					<input type="text" class="input-xlarge" id="input01" value="${product.name}">
				</div>
			</div>
			<div class="form-actions">
				<button type="submit" class="btn btn-primary">Save changes</button>
				<button class="btn" >Cancel</button>
			</div>
		</fieldset>
	</form>
</#macro>

<#macro sidebar>
	<#include "item_sidebar.ftl"/>
</#macro>

<#include "../layout.ftl">