<#import "/spring.ftl" as spring />
<#macro main>
	<table class="table">
		<thead>
			<tr>
				<th>id</th>
				<th>name</th>
				<th>weight</th>
				<th>price</th>
			</tr>
		</thead>
		<tbody>
			<#list products as p>
			<tr>
				<td>${p.id}</td>
				<td><a href="<@spring.url relativeUrl="/product/{id}" id=p.id/>">${p.name}</a></td>
				<td>${p.weight}</td>
				<td>${p.price}</td>
			</tr>
			</#list>
		</tbody>
	</table>
</#macro>

<#macro sidebar>
	<div class="well sidebar-nav">
		<ul class="nav nav-list">
			<li class="nav-header">Filter</li>
			<li><a href="<@spring.url "/products/"/>">All</a></li>
			<li><a href="<@spring.url "/products/cheap"/>">Cheap</a></li>
			<li><a href="<@spring.url "/products/heavy"/>">Heavy</a></li>
		</ul>
	</div><!--/.well -->
</#macro>

<#include "../layout.ftl">
