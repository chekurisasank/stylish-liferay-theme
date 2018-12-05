<a class="menu-toggle rounded" href="#">
	<i class="fas fa-bars"></i>
</a>

<nav id="sidebar-wrapper">
	<ul class="sidebar-nav" aria-label="<@liferay.language key="site-pages" />" role="menubar">
		<li class="sidebar-brand">
			<a class="js-scroll-trigger" href="#wrapper">
				<#if show_logo_image>
					<img alt="${logo_description}" height="24" src="${site_logo}" />
				</#if>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
			</a>
		</li>
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_selected = "aria-selected='true'"
					nav_item_css_class = "selected"
				/>
			</#if>

			<li ${nav_item_attr_selected} class="${nav_item_css_class} sidebar-nav-item" id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a aria-labelledby="layout_${nav_item.getLayoutId()}" class="js-scroll-trigger" href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>
			</li>
		</#list>

		<#if !is_signed_in>
			<li class="sidebar-nav-item" role="presentation">
				<a class="js-scroll-trigger" data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
			</li>
		</#if>
	</ul>
</nav>