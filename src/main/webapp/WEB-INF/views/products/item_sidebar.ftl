<#import "/spring.ftl" as spring />
<div class="well sidebar-nav">
	<ul class="nav nav-list">
		<li class="nav-header">Actions</li>
		<li><a href="<@spring.url relativeUrl="/product/{id}" id=product.id/>">View</a></li>
		<li><a href="<@spring.url relativeUrl="/product/{id}/edit" id=product.id/>">Edit</a></li>
		<li><a href="<@spring.url relativeUrl="/product/{id}/delete" id=product.id/>">Delete</a></li>
		<li><a href="<@spring.url relativeUrl="/products/"/>">Go to list</a></li>
	</ul>
</div><!--/.well -->
