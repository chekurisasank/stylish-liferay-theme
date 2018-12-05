<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body class="${css_class}">

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<#if has_navigation || !is_signed_in>
	<#include "${full_templates_path}/navigation.ftl" />
</#if>

<div class="pt-0" id="wrapper">
	<section class="pt-0" id="content">
		<#if show_example_content>
			<#include "${full_templates_path}/temporal_content.ftl" />
		</#if>

		<#if selectable>
			<div class="container-fluid">
				<@liferay_util["include"] page=content_include />
			</div>
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<#if show_example_content>
		<#include "${full_templates_path}/footer.ftl" />
	</#if>
	
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded js-scroll-trigger" href="#wrapper">
		<i class="fas fa-angle-up"></i>
	</a>
</div>

<script src="${javascript_folder}/vendor/jquery-easing/jquery.easing.js"></script>
<script src="${javascript_folder}/vendor/stylish/stylish-portfolio.js"></script>

<a href="${javascript_folder}/vendor/stylish/stylish-portfolio.js"> link to stylish-portfolio.js</a>
<a href="${javascript_folder}/vendor/jquery-easing/jquery.easing.js"> link to jquery.easing.js</a>

<#--  <script src="https://blackrockdigital.github.io/startbootstrap-stylish-portfolio/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="https://blackrockdigital.github.io/startbootstrap-stylish-portfolio/js/stylish-portfolio.min.js"></script>  -->

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />


<!-- inject:js -->
<!-- endinject -->

</body>

</html>