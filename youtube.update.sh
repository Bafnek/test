<!DOCTYPE html>
<html class="" lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<link href="https://assets.gitlab-static.net" rel="dns-prefetch">
<link crossorigin="" href="https://assets.gitlab-static.net" rel="preconnect">
<link as="style" crossorigin="anonymous" href="https://assets.gitlab-static.net/assets/application-714d178570d9e6151a416e4cf95cfce885bde12d899970a3b899abd41ccf6ab2.css" rel="preload">
<link as="style" crossorigin="anonymous" href="https://assets.gitlab-static.net/assets/highlight/themes/white-0678dba52a34ddc3b009cf294c54cfbddb9bac5991d6377ab811afe156e5a0cb.css" rel="preload">
<link as="font" crossorigin="anonymous" href="https://assets.gitlab-static.net/assets/fontawesome-webfont-2adefcbc041e7d18fcf2d417879dc5a09997aa64d675b7a3c4b6ce33da13f3fe.woff2?v=4.7.0" rel="preload" type="font/woff2">
<link crossorigin="" href="snowplow.trx.gitlab.net" rel="preconnect">

<meta content="IE=edge" http-equiv="X-UA-Compatible">

<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="youtube.update.sh · master · grub / YouTube updater for Pi-hole" property="og:title">
<meta content="Quick and dirty script that may help with YouTube ads. Run this as root in your Pi-hole and cron it. This is not ideal and not as good..." property="og:description">
<meta content="https://assets.gitlab-static.net/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://gitlab.com/grublets/youtube-updater-for-pi-hole/-/blob/master/youtube.update.sh" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="youtube.update.sh · master · grub / YouTube updater for Pi-hole" property="twitter:title">
<meta content="Quick and dirty script that may help with YouTube ads. Run this as root in your Pi-hole and cron it. This is not ideal and not as good..." property="twitter:description">
<meta content="https://assets.gitlab-static.net/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="twitter:image">

<title>youtube.update.sh · master · grub / YouTube updater for Pi-hole · GitLab</title>
<meta content="Quick and dirty script that may help with YouTube ads. Run this as root in your Pi-hole and cron it. This is not ideal and not as good..." name="description">
<link rel="shortcut icon" type="image/png" href="https://gitlab.com/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" id="favicon" data-original-href="https://gitlab.com/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" />
<style type="text/css">
body.ui-indigo .navbar-gitlab{background-color:#292961}body.ui-indigo .navbar-gitlab .navbar-collapse{color:#d1d1f0}body.ui-indigo .navbar-gitlab .container-fluid .navbar-toggler{border-left:1px solid #6868b9}body.ui-indigo .navbar-gitlab .container-fluid .navbar-toggler svg{fill:#d1d1f0}body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>a:hover,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>a:focus,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>button:hover,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>button:focus,body.ui-indigo .navbar-gitlab .navbar-nav>li>a:hover,body.ui-indigo .navbar-gitlab .navbar-nav>li>a:focus,body.ui-indigo .navbar-gitlab .navbar-nav>li>button:hover,body.ui-indigo .navbar-gitlab .navbar-nav>li>button:focus{background-color:rgba(209,209,240,0.2)}body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.active>a,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.active>button,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.dropdown.show>a,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.dropdown.show>button,body.ui-indigo .navbar-gitlab .navbar-nav>li.active>a,body.ui-indigo .navbar-gitlab .navbar-nav>li.active>button,body.ui-indigo .navbar-gitlab .navbar-nav>li.dropdown.show>a,body.ui-indigo .navbar-gitlab .navbar-nav>li.dropdown.show>button{color:#292961;background-color:#fff}body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.line-separator,body.ui-indigo .navbar-gitlab .navbar-nav>li.line-separator{border-left:1px solid rgba(209,209,240,0.2)}body.ui-indigo .navbar-gitlab .navbar-sub-nav{color:#d1d1f0}body.ui-indigo .navbar-gitlab .nav>li{color:#d1d1f0}body.ui-indigo .navbar-gitlab .nav>li>a.header-user-dropdown-toggle .header-user-avatar{border-color:#d1d1f0}body.ui-indigo .navbar-gitlab .nav>li>a.header-user-dropdown-toggle .header-user-notification-dot{border:2px solid #292961}@media (min-width: 576px){body.ui-indigo .navbar-gitlab .nav>li>a:hover,body.ui-indigo .navbar-gitlab .nav>li>a:focus{background-color:rgba(209,209,240,0.2)}}body.ui-indigo .navbar-gitlab .nav>li>a:hover svg,body.ui-indigo .navbar-gitlab .nav>li>a:focus svg{fill:currentColor}body.ui-indigo .navbar-gitlab .nav>li>a:hover.header-user-dropdown-toggle .header-user-notification-dot,body.ui-indigo .navbar-gitlab .nav>li>a:focus.header-user-dropdown-toggle .header-user-notification-dot{border-color:#4a4a82}body.ui-indigo .navbar-gitlab .nav>li.active>a,body.ui-indigo .navbar-gitlab .nav>li.dropdown.show>a{color:#292961;background-color:#fff}body.ui-indigo .navbar-gitlab .nav>li.active>a:hover svg,body.ui-indigo .navbar-gitlab .nav>li.dropdown.show>a:hover svg{fill:#292961}body.ui-indigo .navbar-gitlab .nav>li.active>a.header-user-dropdown-toggle .header-user-notification-dot,body.ui-indigo .navbar-gitlab .nav>li.dropdown.show>a.header-user-dropdown-toggle .header-user-notification-dot{border-color:#fff}body.ui-indigo .navbar-gitlab .nav>li .impersonated-user svg,body.ui-indigo .navbar-gitlab .nav>li .impersonated-user:hover svg{fill:#292961}body.ui-indigo .navbar .title>a:hover,body.ui-indigo .navbar .title>a:focus{background-color:rgba(209,209,240,0.2)}body.ui-indigo .search form{background-color:rgba(209,209,240,0.2)}body.ui-indigo .search form:hover{background-color:rgba(209,209,240,0.3)}body.ui-indigo .search .search-input::placeholder{color:rgba(209,209,240,0.8)}body.ui-indigo .search .search-input-wrap .search-icon,body.ui-indigo .search .search-input-wrap .clear-icon{fill:rgba(209,209,240,0.8)}body.ui-indigo .search.search-active form{background-color:#fff}body.ui-indigo .search.search-active .search-input-wrap .search-icon{fill:rgba(209,209,240,0.8)}body.ui-indigo .nav-sidebar li.active{box-shadow:inset 4px 0 0 #4b4ba3}body.ui-indigo .nav-sidebar li.active>a{color:#393982}body.ui-indigo .nav-sidebar li.active .nav-icon-container svg{fill:#393982}body.ui-indigo .sidebar-top-level-items>li.active .badge.badge-pill{color:#393982}body.ui-indigo .nav-links li.active a,body.ui-indigo .nav-links li.md-header-tab.active button,body.ui-indigo .nav-links li a.active{border-bottom:2px solid #6666c4}body.ui-indigo .nav-links li.active a .badge.badge-pill,body.ui-indigo .nav-links li.md-header-tab.active button .badge.badge-pill,body.ui-indigo .nav-links li a.active .badge.badge-pill{font-weight:600}body.ui-indigo .branch-header-title{color:#4b4ba3}body.ui-indigo .ide-sidebar-link.active{color:#4b4ba3;box-shadow:inset 3px 0 #4b4ba3}body.ui-indigo .ide-sidebar-link.active.is-right{box-shadow:inset -3px 0 #4b4ba3}

*,*::before,*::after{box-sizing:border-box}html{font-family:sans-serif;line-height:1.15}header,nav,section{display:block}body{margin:0;font-family:-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Noto Sans", Ubuntu, Cantarell, "Helvetica Neue", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";font-size:1rem;font-weight:400;line-height:1.5;color:#303030;text-align:left;background-color:#fff}h1,h2,h3{margin-top:0;margin-bottom:0.25rem}p{margin-top:0;margin-bottom:1rem}ul{margin-top:0;margin-bottom:1rem}ul ul{margin-bottom:0}strong{font-weight:bolder}sub{position:relative;font-size:75%;line-height:0;vertical-align:baseline}sub{bottom:-.25em}a{color:#007bff;text-decoration:none;background-color:transparent}a:not([href]){color:inherit;text-decoration:none}pre,code{font-family:"Menlo", "DejaVu Sans Mono", "Liberation Mono", "Consolas", "Ubuntu Mono", "Courier New", "andale mono", "lucida console", monospace;font-size:1em}pre{margin-top:0;margin-bottom:1rem;overflow:auto}img{vertical-align:middle;border-style:none}svg{overflow:hidden;vertical-align:middle}table{border-collapse:collapse}th{text-align:inherit}button{border-radius:0}input,button,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button,input{overflow:visible}button{text-transform:none}button:not(:disabled),[type="button"]:not(:disabled),[type="reset"]:not(:disabled){cursor:pointer}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner{padding:0;border-style:none}textarea{overflow:auto;resize:vertical}[type="search"]{outline-offset:-2px}summary{display:list-item;cursor:pointer}template{display:none}[hidden]{display:none !important}h1,h2,h3,.h1,.h2,.h3{margin-bottom:0.25rem;font-weight:600;line-height:1.2;color:#303030}h1,.h1{font-size:2.1875rem}h2,.h2{font-size:1.75rem}h3,.h3{font-size:1.53125rem}.list-unstyled{padding-left:0;list-style:none}code{font-size:90%;color:#1f1f1f;word-wrap:break-word}a>code{color:inherit}pre{display:block;font-size:90%;color:#303030}pre code{font-size:inherit;color:inherit;word-break:normal}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width: 576px){.container{max-width:540px}}@media (min-width: 768px){.container{max-width:720px}}@media (min-width: 992px){.container{max-width:960px}}@media (min-width: 1200px){.container{max-width:1140px}}.container-fluid{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width: 576px){.container{max-width:540px}}@media (min-width: 768px){.container{max-width:720px}}@media (min-width: 992px){.container{max-width:960px}}@media (min-width: 1200px){.container{max-width:1140px}}.row{display:flex;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.table{width:100%;margin-bottom:0.5rem;color:#303030}.table th,.table td{padding:0.75rem;vertical-align:top;border-top:1px solid #dbdbdb}.search form{display:block;width:100%;height:34px;padding:0.375rem 0.75rem;font-size:0.875rem;font-weight:400;line-height:1.5;color:#303030;background-color:#fff;background-clip:padding-box;border:1px solid #dbdbdb;border-radius:0.25rem}.search form:-moz-focusring{color:transparent;text-shadow:0 0 0 #303030}.search form::placeholder{color:#5e5e5e;opacity:1}.search form:disabled{background-color:#fafafa;opacity:1}.form-inline{display:flex;flex-flow:row wrap;align-items:center}@media (min-width: 576px){.form-inline .search form,.search .form-inline form{display:inline-block;width:auto;vertical-align:middle}}.btn{display:inline-block;font-weight:400;color:#303030;text-align:center;vertical-align:middle;cursor:pointer;user-select:none;background-color:transparent;border:1px solid transparent;padding:0.375rem 0.75rem;font-size:1rem;line-height:20px;border-radius:0.25rem}.btn.disabled,.btn:disabled{opacity:0.65}a.btn.disabled{pointer-events:none}.collapse:not(.show){display:none}.dropdown{position:relative}.dropdown-menu-toggle{white-space:nowrap}.dropdown-menu-toggle::after{display:inline-block;margin-left:0.255em;vertical-align:0.255em;content:"";border-top:0.3em solid;border-right:0.3em solid transparent;border-bottom:0;border-left:0.3em solid transparent}.dropdown-menu-toggle:empty::after{margin-left:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:10rem;padding:0.5rem 0;margin:0.125rem 0 0;font-size:1rem;color:#303030;text-align:left;list-style:none;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,0.15);border-radius:0.25rem}.dropdown-menu-right{right:0;left:auto}.divider{height:0;margin:4px 0;overflow:hidden;border-top:1px solid #dbdbdb}.dropdown-menu.show{display:block}.nav{display:flex;flex-wrap:wrap;padding-left:0;margin-bottom:0;list-style:none}.navbar{position:relative;display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;padding:0.25rem 0.5rem}.navbar .container,.navbar .container-fluid{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between}.navbar-nav{display:flex;flex-direction:column;padding-left:0;margin-bottom:0;list-style:none}.navbar-nav .dropdown-menu{position:static;float:none}.navbar-collapse{flex-basis:100%;flex-grow:1;align-items:center}.navbar-toggler{padding:0.25rem 0.75rem;font-size:1.25rem;line-height:1;background-color:transparent;border:1px solid transparent;border-radius:0.25rem}@media (max-width: 575.98px){.navbar-expand-sm>.container,.navbar-expand-sm>.container-fluid{padding-right:0;padding-left:0}}@media (min-width: 576px){.navbar-expand-sm{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-sm .navbar-nav{flex-direction:row}.navbar-expand-sm .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-sm>.container,.navbar-expand-sm>.container-fluid{flex-wrap:nowrap}.navbar-expand-sm .navbar-collapse{display:flex !important;flex-basis:auto}.navbar-expand-sm .navbar-toggler{display:none}}.card{position:relative;display:flex;flex-direction:column;min-width:0;word-wrap:break-word;background-color:#fff;background-clip:border-box;border:1px solid #dbdbdb;border-radius:0.25rem}.badge{display:inline-block;padding:0.25em 0.4em;font-size:75%;font-weight:600;line-height:1;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:0.25rem}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.badge-pill{padding-right:0.6em;padding-left:0.6em;border-radius:10rem}.media{display:flex;align-items:flex-start}.close{float:right;font-size:1.5rem;font-weight:600;line-height:1;color:#000;text-shadow:0 1px 0 #fff;opacity:.5}button.close{padding:0;background-color:transparent;border:0;appearance:none}a.close.disabled{pointer-events:none}.modal-dialog{position:relative;width:auto;margin:0.5rem;pointer-events:none}@media (min-width: 576px){.modal-dialog{max-width:500px;margin:1.75rem auto}}.bg-transparent{background-color:transparent !important}.border{border:1px solid #dbdbdb !important}.border-top{border-top:1px solid #dbdbdb !important}.border-right{border-right:1px solid #dbdbdb !important}.border-bottom{border-bottom:1px solid #dbdbdb !important}.border-left{border-left:1px solid #dbdbdb !important}.rounded{border-radius:0.25rem !important}.clearfix::after{display:block;clear:both;content:""}.d-none{display:none !important}.d-inline-block{display:inline-block !important}.d-block{display:block !important}@media (min-width: 576px){.d-sm-none{display:none !important}}@media (min-width: 768px){.d-md-block{display:block !important}}@media (min-width: 992px){.d-lg-none{display:none !important}.d-lg-block{display:block !important}}@media (min-width: 1200px){.d-xl-block{display:block !important}}.flex-wrap{flex-wrap:wrap !important}.float-right{float:right !important}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);white-space:nowrap;border:0}.m-auto{margin:auto !important}.text-nowrap{white-space:nowrap !important}.visible{visibility:visible !important}.search form.focus{color:#303030;background-color:#fff;border-color:#80bdff;outline:0;box-shadow:0 0 0 0.2rem rgba(0,123,255,0.25)}.gl-badge{display:inline-flex;align-items:center;font-size:0.75rem;font-weight:400;line-height:1rem;padding-top:0.25rem;padding-bottom:0.25rem;padding-left:0.5rem;padding-right:0.5rem;outline:none}body,.search form,.search form{font-size:0.875rem}button,html [type='button'],[type='reset'],[role='button']{cursor:pointer}h1,.h1,h2,.h2,h3,.h3{margin-top:20px;margin-bottom:10px}input[type='file']{line-height:1}strong{font-weight:bold}a{color:#1068bf}code{padding:2px 4px;color:#1f1f1f;background-color:#f0f0f0;border-radius:4px}.code>code{background-color:inherit;padding:unset}table{border-spacing:0}.hidden{display:none !important;visibility:hidden !important}.hide{display:none}.dropdown-menu-toggle::after{display:none}.badge:not(.gl-badge){padding:4px 5px;font-size:12px;font-style:normal;font-weight:400;display:inline-block}pre code{white-space:pre-wrap}.toggle-sidebar-button .collapse-text,.toggle-sidebar-button .icon-chevron-double-lg-left,.toggle-sidebar-button .icon-chevron-double-lg-right{color:#666}svg{vertical-align:baseline}html{overflow-y:scroll}body{text-decoration-skip:ink}.content-wrapper{margin-top:40px;padding-bottom:100px}.container{padding-top:0;z-index:5}.container .content{margin:0}@media (max-width: 575.98px){.container .content{margin-top:20px}}@media (max-width: 575.98px){.container .container .title{padding-left:15px !important}}.btn{border-radius:4px;font-size:0.875rem;font-weight:400;padding:6px 10px;background-color:#fff;border-color:#dbdbdb;color:#303030;color:#303030;white-space:nowrap}.btn:active,.btn.active{box-shadow:rgba(0,0,0,0.16);background-color:#eaeaea;border-color:#e3e3e3;color:#303030}.btn svg{height:15px;width:15px}.btn svg:not(:last-child),.btn .fa:not(:last-child){margin-right:5px}.badge.badge-pill:not(.gl-badge){font-weight:400;background-color:rgba(0,0,0,0.07);color:#525252;vertical-align:baseline}.hint{font-style:italic;color:#bfbfbf}.bold{font-weight:600}pre.wrap{word-break:break-word;white-space:pre-wrap}table a code{position:relative;top:-2px;margin-right:3px}.loading{margin:20px auto;height:40px;color:#525252;font-size:32px;text-align:center}.highlight{text-shadow:none}.chart{overflow:hidden;height:220px}.break-word{word-wrap:break-word}.center{text-align:center}.block{display:block}.flex{display:flex}.flex-grow{flex-grow:1}.dropdown{position:relative}.show.dropdown .dropdown-menu{transform:translateY(0);display:block;min-height:40px;max-height:312px;overflow-y:auto}@media (max-width: 575.98px){.show.dropdown .dropdown-menu{width:100%}}.show.dropdown .dropdown-menu-toggle,.show.dropdown .dropdown-menu-toggle{border-color:#c4c4c4}.show.dropdown [data-toggle='dropdown']{outline:0}.search-input-container .dropdown-menu{margin-top:11px}.dropdown-menu-toggle{padding:6px 8px 6px 10px;background-color:#fff;color:#303030;font-size:14px;text-align:left;border:1px solid #dbdbdb;border-radius:0.25rem;white-space:nowrap}.no-outline.dropdown-menu-toggle{outline:0}.dropdown-menu-toggle .fa{color:#c4c4c4}.dropdown-menu-toggle{padding-right:25px;position:relative;width:160px;text-overflow:ellipsis;overflow:hidden}.dropdown-menu-toggle .fa{position:absolute}.dropdown-menu{display:none;position:absolute;width:auto;top:100%;z-index:300;min-width:240px;max-width:500px;margin-top:4px;margin-bottom:24px;font-size:14px;font-weight:400;padding:8px 0;background-color:#fff;border:1px solid #dbdbdb;border-radius:0.25rem;box-shadow:0 2px 4px rgba(0,0,0,0.1)}.dropdown-menu ul{margin:0;padding:0}.dropdown-menu li{display:block;text-align:left;list-style:none;padding:0 1px}.dropdown-menu li>a,.dropdown-menu li button{background:transparent;border:0;border-radius:0;box-shadow:none;display:block;font-weight:400;position:relative;padding:8px 12px;color:#303030;line-height:16px;white-space:normal;overflow:hidden;text-align:left;width:100%}.dropdown-menu .divider{height:1px;margin:0.25rem 0;padding:0;background-color:#dbdbdb}.dropdown-menu .badge.badge-pill+span:not(.badge.badge-pill){margin-right:40px}.dropdown-select{width:300px}@media (max-width: 767.98px){.dropdown-select{width:100%}}.dropdown-content{max-height:252px;overflow-y:auto}.dropdown-loading{position:absolute;top:0;right:0;bottom:0;left:0;display:none;z-index:9;background-color:rgba(255,255,255,0.6);font-size:28px}.dropdown-loading .fa{position:absolute;top:50%;left:50%;margin-top:-14px;margin-left:-14px}@media (max-width: 575.98px){.navbar-gitlab li.dropdown{position:static}header.navbar-gitlab .dropdown .dropdown-menu{width:100%;min-width:100%}}@media (max-width: 767.98px){.dropdown-menu-toggle{width:100%}}textarea{resize:vertical}input{border-radius:0.25rem;color:#303030;background-color:#fff}.search form{border-radius:4px;padding:6px 10px}.search form::placeholder{color:#868686}.navbar-gitlab{padding:0 16px;z-index:1000;margin-bottom:0;min-height:40px;border:0;border-bottom:1px solid #dbdbdb;position:fixed;top:0;left:0;right:0;border-radius:0}.navbar-gitlab .logo-text{line-height:initial}.navbar-gitlab .logo-text svg{width:55px;height:14px;margin:0;fill:#fff}.navbar-gitlab .close-icon{display:none}.navbar-gitlab .header-content{width:100%;display:flex;justify-content:space-between;position:relative;min-height:40px;padding-left:0}.navbar-gitlab .header-content .title-container{display:flex;align-items:stretch;flex:1 1 auto;padding-top:0;overflow:visible}.navbar-gitlab .header-content .title{padding-right:0;color:currentColor;display:flex;position:relative;margin:0;font-size:18px;vertical-align:top;white-space:nowrap}.navbar-gitlab .header-content .title img{height:28px}.navbar-gitlab .header-content .title img+.logo-text{margin-left:8px}.navbar-gitlab .header-content .title.wrap{white-space:normal}.navbar-gitlab .header-content .title a{display:flex;align-items:center;padding:2px 8px;margin:5px 2px 5px -8px;border-radius:4px}.navbar-gitlab .header-content .dropdown.open>a{border-bottom-color:#fff}.navbar-gitlab .header-content .navbar-collapse>ul.nav>li:not(.d-none){margin:0 2px}.navbar-gitlab .navbar-collapse{flex:0 0 auto;border-top:0;padding:0}@media (max-width: 575.98px){.navbar-gitlab .navbar-collapse{flex:1 1 auto}}.navbar-gitlab .navbar-collapse .nav{flex-wrap:nowrap}@media (max-width: 575.98px){.navbar-gitlab .navbar-collapse .nav>li:not(.d-none) a{margin-left:0}}.navbar-gitlab .container-fluid{padding:0}.navbar-gitlab .container-fluid .user-counter svg{margin-right:3px}.navbar-gitlab .container-fluid .navbar-toggler{position:relative;right:-10px;border-radius:0;min-width:45px;padding:0;margin:8px -7px 8px 0;font-size:14px;text-align:center;color:currentColor}@media (max-width: 575.98px){.navbar-gitlab .container-fluid .navbar-nav{display:flex;padding-right:10px;flex-direction:row}}.navbar-gitlab .container-fluid .navbar-nav li .badge.badge-pill{box-shadow:none;font-weight:600}@media (max-width: 575.98px){.navbar-gitlab .container-fluid .nav>li.header-user{padding-left:10px}}.navbar-gitlab .container-fluid .nav>li>a{will-change:color;margin:4px 0;padding:6px 8px;height:32px}@media (max-width: 575.98px){.navbar-gitlab .container-fluid .nav>li>a{padding:0}}.navbar-gitlab .container-fluid .nav>li>a.header-user-dropdown-toggle{margin-left:2px}.navbar-gitlab .container-fluid .nav>li>a.header-user-dropdown-toggle .header-user-avatar{margin-right:0}.navbar-gitlab .container-fluid .nav>li .header-new-dropdown-toggle{margin-right:0}.navbar-sub-nav>li>a,.navbar-sub-nav>li>button,.navbar-nav>li>a,.navbar-nav>li>button{display:flex;align-items:center;justify-content:center;padding:6px 8px;margin:4px 2px;font-size:12px;color:currentColor;border-radius:4px;height:32px;font-weight:600}.navbar-sub-nav>li>button,.navbar-nav>li>button{background:transparent;border:0}.navbar-sub-nav .dropdown-menu,.navbar-nav .dropdown-menu{position:absolute}.navbar-sub-nav{display:flex;margin:0 0 0 6px}.caret-down,.btn .caret-down{top:0;height:11px;width:11px;margin-left:4px;fill:currentColor}.header-user .dropdown-menu,.header-new .dropdown-menu{margin-top:4px}.btn-sign-in{background-color:#ebebfa;color:#292961;font-weight:600;line-height:18px;margin:4px 0 4px 2px}.title-container .badge.badge-pill,.navbar-nav .badge.badge-pill{position:inherit;font-weight:400;margin-left:-6px;font-size:11px;color:#fff;padding:0 5px;line-height:12px;border-radius:7px;box-shadow:0 1px 0 rgba(76,78,84,0.2)}.title-container .badge.badge-pill.green-badge,.navbar-nav .badge.badge-pill.green-badge{background-color:#108548}.title-container .badge.badge-pill.merge-requests-count,.navbar-nav .badge.badge-pill.merge-requests-count{background-color:#de7e00}.title-container .badge.badge-pill.todos-count,.navbar-nav .badge.badge-pill.todos-count{background-color:#1f75cb}.title-container .canary-badge .badge,.navbar-nav .canary-badge .badge{font-size:12px;line-height:16px;padding:0 0.5rem}@media (max-width: 575.98px){.navbar-gitlab .container-fluid{font-size:18px}.navbar-gitlab .container-fluid .navbar-nav{table-layout:fixed;width:100%;margin:0;text-align:right}.navbar-gitlab .container-fluid .navbar-collapse{margin-left:-8px;margin-right:-10px}.navbar-gitlab .container-fluid .navbar-collapse .nav>li:not(.d-none){flex:1}.header-user-dropdown-toggle{text-align:center}.header-user-avatar{float:none}}.header-user.show .dropdown-menu{margin-top:4px;color:#303030;left:auto;max-height:445px}.header-user.show .dropdown-menu svg{vertical-align:text-top}.header-user-avatar{float:left;margin-right:5px;border-radius:50%;border:1px solid #f5f5f5}.media{display:flex;align-items:flex-start}.card{margin-bottom:16px}.content-wrapper{width:100%}.content-wrapper .container-fluid{padding:0 16px}@media (min-width: 768px){.page-with-contextual-sidebar{padding-left:50px}}@media (min-width: 1200px){.page-with-contextual-sidebar{padding-left:220px}}.context-header{position:relative;margin-right:2px;width:220px}.context-header>a,.context-header>button{font-weight:600;display:flex;width:100%;align-items:center;padding:10px 16px 10px 10px;color:#303030;background-color:transparent;border:0;text-align:left}.context-header .avatar-container{flex:0 0 40px;background-color:#fff}.context-header .sidebar-context-title{overflow:hidden;text-overflow:ellipsis}.context-header .sidebar-context-title.text-secondary{font-weight:normal;font-size:0.8em}.nav-sidebar{position:fixed;z-index:600;width:220px;top:40px;bottom:0;left:0;background-color:#fafafa;box-shadow:inset -1px 0 0 #dbdbdb;transform:translate3d(0, 0, 0)}@media (min-width: 576px) and (max-width: 576px){.nav-sidebar:not(.sidebar-collapsed-desktop){box-shadow:inset -1px 0 0 #dbdbdb,2px 1px 3px rgba(0,0,0,0.1)}}.nav-sidebar.sidebar-collapsed-desktop{width:50px}.nav-sidebar.sidebar-collapsed-desktop .nav-sidebar-inner-scroll{overflow-x:hidden}.nav-sidebar.sidebar-collapsed-desktop .badge.badge-pill:not(.fly-out-badge),.nav-sidebar.sidebar-collapsed-desktop .sidebar-context-title,.nav-sidebar.sidebar-collapsed-desktop .nav-item-name{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.nav-sidebar.sidebar-collapsed-desktop .sidebar-top-level-items>li>a{min-height:45px}.nav-sidebar.sidebar-collapsed-desktop .fly-out-top-item{display:block}.nav-sidebar.sidebar-collapsed-desktop .avatar-container{margin:0 auto}.nav-sidebar.sidebar-expanded-mobile{left:0}.nav-sidebar a{text-decoration:none}.nav-sidebar ul{padding-left:0;list-style:none}.nav-sidebar li{white-space:nowrap}.nav-sidebar li a{display:flex;align-items:center;padding:12px 16px;color:#666}.nav-sidebar li .nav-item-name{flex:1}.nav-sidebar li.active>a{font-weight:600}@media (max-width: 767.98px){.nav-sidebar{left:-220px}}.nav-sidebar .nav-icon-container{display:flex;margin-right:8px}.nav-sidebar .fly-out-top-item{display:none}.nav-sidebar svg{height:16px;width:16px}@media (min-width: 768px) and (max-width: 1199px){.nav-sidebar:not(.sidebar-expanded-mobile){width:50px}.nav-sidebar:not(.sidebar-expanded-mobile) .nav-sidebar-inner-scroll{overflow-x:hidden}.nav-sidebar:not(.sidebar-expanded-mobile) .badge.badge-pill:not(.fly-out-badge),.nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-context-title,.nav-sidebar:not(.sidebar-expanded-mobile) .nav-item-name{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-top-level-items>li>a{min-height:45px}.nav-sidebar:not(.sidebar-expanded-mobile) .fly-out-top-item{display:block}.nav-sidebar:not(.sidebar-expanded-mobile) .avatar-container{margin:0 auto}.nav-sidebar:not(.sidebar-expanded-mobile) .context-header{height:60px;width:50px}.nav-sidebar:not(.sidebar-expanded-mobile) .context-header a{padding:10px 4px}.nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-top-level-items>li .sidebar-sub-level-items:not(.flyout-list){display:none}.nav-sidebar:not(.sidebar-expanded-mobile) .nav-icon-container{margin-right:0}.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button{padding:16px;width:49px}.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .collapse-text,.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .icon-chevron-double-lg-left{display:none}.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .icon-chevron-double-lg-right{display:block;margin:0}}.nav-sidebar-inner-scroll{height:100%;width:100%;overflow:auto}.sidebar-sub-level-items{display:none;padding-bottom:8px}.sidebar-sub-level-items>li a{padding:8px 16px 8px 40px}.sidebar-top-level-items{margin-bottom:60px}@media (min-width: 576px){.sidebar-top-level-items>li>a{margin-right:1px}}.sidebar-top-level-items>li .badge.badge-pill{background-color:rgba(0,0,0,0.08);color:#666}.sidebar-top-level-items>li.active{background:rgba(0,0,0,0.04)}.sidebar-top-level-items>li.active>a{margin-left:4px;padding-left:12px}.sidebar-top-level-items>li.active .badge.badge-pill{font-weight:600}.sidebar-top-level-items>li.active .sidebar-sub-level-items:not(.is-fly-out-only){display:block}.toggle-sidebar-button,.close-nav-button{width:219px;position:fixed;height:48px;bottom:0;padding:0 16px;background-color:#fafafa;border:0;border-top:1px solid #dbdbdb;color:#666;display:flex;align-items:center}.toggle-sidebar-button svg,.close-nav-button svg{margin-right:8px}.toggle-sidebar-button .icon-chevron-double-lg-right,.close-nav-button .icon-chevron-double-lg-right{display:none}.collapse-text{white-space:nowrap;overflow:hidden}.sidebar-collapsed-desktop .context-header{height:60px;width:50px}.sidebar-collapsed-desktop .context-header a{padding:10px 4px}.sidebar-collapsed-desktop .sidebar-top-level-items>li .sidebar-sub-level-items:not(.flyout-list){display:none}.sidebar-collapsed-desktop .nav-icon-container{margin-right:0}.sidebar-collapsed-desktop .toggle-sidebar-button{padding:16px;width:49px}.sidebar-collapsed-desktop .toggle-sidebar-button .collapse-text,.sidebar-collapsed-desktop .toggle-sidebar-button .icon-chevron-double-lg-left{display:none}.sidebar-collapsed-desktop .toggle-sidebar-button .icon-chevron-double-lg-right{display:block;margin:0}.fly-out-top-item>a{display:flex}.fly-out-top-item .fly-out-badge{margin-left:8px}.fly-out-top-item-name{flex:1}.close-nav-button{display:none}@media (max-width: 767.98px){.close-nav-button{display:flex}.toggle-sidebar-button{display:none}}table.table{margin-bottom:16px}table.table .dropdown-menu a{text-decoration:none}table.table .success,table.table .info{color:#fff}table.table .success a:not(.btn),table.table .info a:not(.btn){text-decoration:underline;color:#fff}pre{font-family:"Menlo", "DejaVu Sans Mono", "Liberation Mono", "Consolas", "Ubuntu Mono", "Courier New", "andale mono", "lucida console", monospace;display:block;padding:8px 12px;margin:0 0 8px;font-size:13px;word-break:break-all;word-wrap:break-word;color:#303030;background-color:#fafafa;border:1px solid #dbdbdb;border-radius:2px}.monospace{font-family:"Menlo", "DejaVu Sans Mono", "Liberation Mono", "Consolas", "Ubuntu Mono", "Courier New", "andale mono", "lucida console", monospace}input::-moz-placeholder,textarea::-moz-placeholder{color:#868686;opacity:1}input::-ms-input-placeholder,textarea::-ms-input-placeholder{color:#868686}input:-ms-input-placeholder,textarea:-ms-input-placeholder{color:#868686}svg{fill:currentColor}svg.s12{width:12px;height:12px}svg.s16{width:16px;height:16px}svg.s18{width:18px;height:18px}svg.s12{vertical-align:-1px}svg.s16{vertical-align:-3px}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}table.code{width:100%;font-family:"Menlo", "DejaVu Sans Mono", "Liberation Mono", "Consolas", "Ubuntu Mono", "Courier New", "andale mono", "lucida console", monospace;border:0;border-collapse:separate;margin:0;padding:0;table-layout:fixed;border-radius:0 0 4px 4px}.frame .badge.badge-pill{position:absolute;background-color:#428fdc;color:#fff;border:#fff 1px solid;min-height:16px;padding:5px 8px;border-radius:12px}.frame .badge.badge-pill{transform:translate(-50%, -50%)}.color-label{padding:0 0.5rem;line-height:16px;border-radius:100px;color:#fff}.label-link{display:inline-flex;vertical-align:text-bottom}.milestones{padding:8px;margin-top:8px;border-radius:4px;background-color:#dbdbdb}.search{margin:0 8px}.search form{margin:0;padding:4px;width:200px;line-height:24px;height:32px;border:0;border-radius:4px}@media (min-width: 1200px){.search form{width:320px}}.search .search-input{border:0;font-size:14px;padding:0 20px 0 0;margin-left:5px;line-height:25px;width:98%;color:#fff;background:none}.search .search-input-container{display:flex;position:relative}.search .search-input-wrap{width:100%}.search .search-input-wrap .search-icon,.search .search-input-wrap .clear-icon{position:absolute;right:5px;top:4px}.search .search-input-wrap .search-icon{-moz-user-select:none;user-select:none}.search .search-input-wrap .clear-icon{display:none}.search .search-input-wrap .dropdown{position:static}.search .search-input-wrap .dropdown-menu{left:-5px;max-height:400px;overflow:auto}@media (min-width: 1200px){.search .search-input-wrap .dropdown-menu{width:320px}}.search .search-input-wrap .dropdown-content{max-height:382px}.settings{border-top:1px solid #dbdbdb}.settings:first-of-type{margin-top:10px;border:0}.settings+div .settings:first-of-type{margin-top:0;border-top:1px solid #dbdbdb}.avatar,.avatar-container{float:left;margin-right:16px;border-radius:50%;border:1px solid #f5f5f5}.s16.avatar,.s16.avatar-container{width:16px;height:16px;margin-right:8px}.s18.avatar,.s18.avatar-container{width:18px;height:18px;margin-right:8px}.s40.avatar,.s40.avatar-container{width:40px;height:40px;margin-right:8px}.avatar{transition-property:none;width:40px;height:40px;padding:0;background:#fdfdfd;overflow:hidden;border-color:rgba(0,0,0,0.1)}.avatar.center{font-size:14px;line-height:1.8em;text-align:center}.avatar.avatar-tile{border-radius:0;border:0}.avatar-container{overflow:hidden;display:flex}.avatar-container a{width:100%;height:100%;display:flex;text-decoration:none}.avatar-container .avatar{border-radius:0;border:0;height:auto;width:100%;margin:0;align-self:center}.avatar-container.s40{min-width:40px;min-height:40px}.rect-avatar{border-radius:2px}.rect-avatar.s16{border-radius:2px}.rect-avatar.s18{border-radius:2px}.rect-avatar.s40{border-radius:4px}.tab-width-8{-moz-tab-size:8;tab-size:8}.gl-sr-only{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.gl-ml-3{margin-left:0.5rem}.content-wrapper>.alert-wrapper,#content-body,.modal-dialog{display:block}.content-wrapper>.alert-wrapper,#content-body,.modal-dialog{display:none}

</style>

<link rel="stylesheet" media="print" href="https://assets.gitlab-static.net/assets/application-714d178570d9e6151a416e4cf95cfce885bde12d899970a3b899abd41ccf6ab2.css" crossorigin="anonymous" />

<link rel="stylesheet" media="print" href="https://assets.gitlab-static.net/assets/application_utilities-4a0a7fb4b050255fc637b897e541f513df1cdf23cb1518fabc4323f2d0b78866.css" crossorigin="anonymous" />

<link rel="stylesheet" media="print" href="https://assets.gitlab-static.net/assets/highlight/themes/white-0678dba52a34ddc3b009cf294c54cfbddb9bac5991d6377ab811afe156e5a0cb.css" crossorigin="anonymous" />
<script nonce="Xqr6IRbQXMxOQ/8RGmPwxQ==">
//<![CDATA[
document.querySelectorAll('link[media="print"]').forEach(linkTag => {
  linkTag.setAttribute('data-startupcss', 'loading');
  const startupLinkLoadedEvent = new CustomEvent('CSSStartupLinkLoaded');
  linkTag.addEventListener('load',function(){this.media='all';this.setAttribute('data-startupcss', 'loaded');document.dispatchEvent(startupLinkLoadedEvent);},{once: true});
})

//]]>
</script>

<script nonce="Xqr6IRbQXMxOQ/8RGmPwxQ==">
//<![CDATA[
window.gon={};gon.api_version="v4";gon.default_avatar_url="https://assets.gitlab-static.net/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png";gon.max_file_size=10;gon.asset_host="https://assets.gitlab-static.net";gon.webpack_public_path="https://assets.gitlab-static.net/assets/webpack/";gon.relative_url_root="";gon.shortcuts_path="/help/shortcuts";gon.user_color_scheme="white";gon.sentry_dsn="https://526a2f38a53d44e3a8e69bfa001d1e8b@sentry.gitlab.net/15";gon.sentry_environment="gprd";gon.gitlab_url="https://gitlab.com";gon.revision="cbeb7a1b8fe";gon.gitlab_logo="https://assets.gitlab-static.net/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png";gon.sprite_icons="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg";gon.sprite_file_icons="https://gitlab.com/assets/file_icons-c13caf2f3ca00cc2c02b11d373ac288c200b9b4dcddbb52a5027dc07b3eece19.svg";gon.emoji_sprites_css_path="https://assets.gitlab-static.net/assets/emoji_sprites-289eccffb1183c188b630297431be837765d9ff4aed6130cf738586fb307c170.css";gon.test_env=false;gon.disable_animations=null;gon.suggested_label_colors={"#0033CC":"UA blue","#428BCA":"Moderate blue","#44AD8E":"Lime green","#A8D695":"Feijoa","#5CB85C":"Slightly desaturated green","#69D100":"Bright green","#004E00":"Very dark lime green","#34495E":"Very dark desaturated blue","#7F8C8D":"Dark grayish cyan","#A295D6":"Slightly desaturated blue","#5843AD":"Dark moderate blue","#8E44AD":"Dark moderate violet","#FFECDB":"Very pale orange","#AD4363":"Dark moderate pink","#D10069":"Strong pink","#CC0033":"Strong red","#FF0000":"Pure red","#D9534F":"Soft red","#D1D100":"Strong yellow","#F0AD4E":"Soft orange","#AD8D43":"Dark moderate orange"};gon.first_day_of_week=0;gon.ee=true;gon.features={"webperfExperiment":false,"snippetsBinaryBlob":false,"usageDataApi":true,"securityAutoFix":false,"startupCss":true,"gitlabCiYmlPreview":false};gon.experiments={"suggestPipeline":true};
//]]>
</script>



<script src="https://assets.gitlab-static.net/assets/webpack/runtime.0e57dc06.bundle.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/main.e0c1074c.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/commons-globalSearch-pages.admin.abuse_reports-pages.admin.application_settings.ci_cd-pages.admin.gr-9c6c7086.86d175e6.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/commons-pages.groups.boards-pages.groups.details-pages.groups.show-pages.groups.wikis-pages.projects-ce6b07bc.029cf388.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/commons-pages.admin.application_settings-pages.admin.application_settings.ci_cd-pages.admin.applicat-71f263ea.5fc641e4.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/commons-pages.groups.epics.index-pages.groups.epics.new-pages.groups.epics.show-pages.groups.iterati-b242f3b2.37c1e60d.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/commons-pages.projects.blame.show-pages.projects.blob.edit-pages.projects.blob.new-pages.projects.bl-c6edf1dd.9b8a60ac.chunk.js" defer="defer"></script>
<script src="https://assets.gitlab-static.net/assets/webpack/pages.projects.blob.show.324b60f2.chunk.js" defer="defer"></script>


<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="RlbwVV4aSDi2mGxOxBIh//Rrry6NwibX7IPD3JSZKasSLXbcH3sAZEZ7f7CHM3SwpWhGiDvIHcWAgAELTLypMg==" />
<meta name="csp-nonce" content="Xqr6IRbQXMxOQ/8RGmPwxQ==" />
<meta name="action-cable-url" content="/-/cable" />
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<meta content="#474D57" name="theme-color">
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-iphone-5a9cee0e8a51212e70b90c87c12f382c428870c0ff67d1eb034d884b78d2dae7.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-ipad-a6eec6aeb9da138e507593b464fdac213047e49d3093fc30e90d9a995df83ba3.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-iphone-retina-72e2aadf86513a56e050e7f0f2355deaa19cc17ed97bbe5147847f2748e5a3e3.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/x-icon" href="https://assets.gitlab-static.net/assets/touch-icon-ipad-retina-8ebe416f5313483d9c1bc772b5bbe03ecad52a54eba443e5215a22caed2a16a2.png" sizes="152x152" />
<link color="rgb(226, 67, 41)" href="https://assets.gitlab-static.net/assets/logo-d36b5212042cebc89b96df4bf6ac24e43db316143e89926c0db839ff694d2de4.svg" rel="mask-icon">
<meta content="https://assets.gitlab-static.net/assets/msapplication-tile-1196ec67452f618d39cdd85e2e3a542f76574c071051ae7effbfde01710eb17d.png" name="msapplication-TileImage">
<meta content="#30353E" name="msapplication-TileColor">



<script nonce="Xqr6IRbQXMxOQ/8RGmPwxQ==">
//<![CDATA[
;(function(p,l,o,w,i,n,g){if(!p[i]){p.GlobalSnowplowNamespace=p.GlobalSnowplowNamespace||[];
p.GlobalSnowplowNamespace.push(i);p[i]=function(){(p[i].q=p[i].q||[]).push(arguments)
};p[i].q=p[i].q||[];n=l.createElement(o);g=l.getElementsByTagName(o)[0];n.async=1;
n.src=w;g.parentNode.insertBefore(n,g)}}(window,document,"script","https://assets.gitlab-static.net/assets/snowplow/sp-2c124088f6a3b0db27599c313b654af5fc338a5fa6ee1e6d1ec30813a4323675.js","snowplow"));

window.snowplowOptions = {"namespace":"gl","hostname":"snowplow.trx.gitlab.net","cookieDomain":".gitlab.com","appId":"gitlab","formTracking":true,"linkClickTracking":true}


//]]>
</script>
</head>

<body class="ui-indigo tab-width-8  gl-browser-edge gl-platform-windows" data-find-file="/grublets/youtube-updater-for-pi-hole/-/find_file/master" data-namespace-id="6162165" data-page="projects:blob:show" data-page-type-id="master/youtube.update.sh" data-project="youtube-updater-for-pi-hole" data-project-id="18471902">

<script nonce="Xqr6IRbQXMxOQ/8RGmPwxQ==">
//<![CDATA[
gl = window.gl || {};
gl.client = {"isEdge":true,"isWindows":true};


//]]>
</script>


<header class="navbar navbar-gitlab navbar-expand-sm js-navbar" data-qa-selector="navbar">
<a class="sr-only gl-accessibility" href="#content-body" tabindex="1">Skip to content</a>
<div class="container-fluid">
<div class="header-content">
<div class="title-container">
<h1 class="title">
<span class="gl-sr-only">GitLab</span>
<a title="Dashboard" id="logo" data-track-label="main_navigation" data-track-event="click_gitlab_logo_link" data-track-property="navigation" href="/"><svg width="24" height="24" class="tanuki-logo" viewBox="0 0 36 36">
  <path class="tanuki-shape tanuki-left-ear" fill="#e24329" d="M2 14l9.38 9v-9l-4-12.28c-.205-.632-1.176-.632-1.38 0z"/>
  <path class="tanuki-shape tanuki-right-ear" fill="#e24329" d="M34 14l-9.38 9v-9l4-12.28c.205-.632 1.176-.632 1.38 0z"/>
  <path class="tanuki-shape tanuki-nose" fill="#e24329" d="M18,34.38 3,14 33,14 Z"/>
  <path class="tanuki-shape tanuki-left-eye" fill="#fc6d26" d="M18,34.38 11.38,14 2,14 6,25Z"/>
  <path class="tanuki-shape tanuki-right-eye" fill="#fc6d26" d="M18,34.38 24.62,14 34,14 30,25Z"/>
  <path class="tanuki-shape tanuki-left-cheek" fill="#fca326" d="M2 14L.1 20.16c-.18.565 0 1.2.5 1.56l17.42 12.66z"/>
  <path class="tanuki-shape tanuki-right-cheek" fill="#fca326" d="M34 14l1.9 6.16c.18.565 0 1.2-.5 1.56L18 34.38z"/>
</svg>

<span class="logo-text d-none d-lg-block gl-ml-3">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 617 169"><path d="M315.26 2.97h-21.8l.1 162.5h88.3v-20.1h-66.5l-.1-142.4M465.89 136.95c-5.5 5.7-14.6 11.4-27 11.4-16.6 0-23.3-8.2-23.3-18.9 0-16.1 11.2-23.8 35-23.8 4.5 0 11.7.5 15.4 1.2v30.1h-.1m-22.6-98.5c-17.6 0-33.8 6.2-46.4 16.7l7.7 13.4c8.9-5.2 19.8-10.4 35.5-10.4 17.9 0 25.8 9.2 25.8 24.6v7.9c-3.5-.7-10.7-1.2-15.1-1.2-38.2 0-57.6 13.4-57.6 41.4 0 25.1 15.4 37.7 38.7 37.7 15.7 0 30.8-7.2 36-18.9l4 15.9h15.4v-83.2c-.1-26.3-11.5-43.9-44-43.9M557.63 149.1c-8.2 0-15.4-1-20.8-3.5V70.5c7.4-6.2 16.6-10.7 28.3-10.7 21.1 0 29.2 14.9 29.2 39 0 34.2-13.1 50.3-36.7 50.3m9.2-110.6c-19.5 0-30 13.3-30 13.3v-21l-.1-27.8h-21.3l.1 158.5c10.7 4.5 25.3 6.9 41.2 6.9 40.7 0 60.3-26 60.3-70.9-.1-35.5-18.2-59-50.2-59M77.9 20.6c19.3 0 31.8 6.4 39.9 12.9l9.4-16.3C114.5 6 97.3 0 78.9 0 32.5 0 0 28.3 0 85.4c0 59.8 35.1 83.1 75.2 83.1 20.1 0 37.2-4.7 48.4-9.4l-.5-63.9V75.1H63.6v20.1h38l.5 48.5c-5 2.5-13.6 4.5-25.3 4.5-32.2 0-53.8-20.3-53.8-63-.1-43.5 22.2-64.6 54.9-64.6M231.43 2.95h-21.3l.1 27.3v94.3c0 26.3 11.4 43.9 43.9 43.9 4.5 0 8.9-.4 13.1-1.2v-19.1c-3.1.5-6.4.7-9.9.7-17.9 0-25.8-9.2-25.8-24.6v-65h35.7v-17.8h-35.7l-.1-38.5M155.96 165.47h21.3v-124h-21.3v124M155.96 24.37h21.3V3.07h-21.3v21.3"/></svg>

</span>
</a></h1>
<ul class="list-unstyled navbar-sub-nav">
<li class="home"><a title="Projects" class="dashboard-shortcuts-projects" href="/explore">Projects
</a></li><li class=""><a title="Groups" class="dashboard-shortcuts-groups" href="/explore/groups">Groups
</a></li><li class=""><a title="Snippets" class="dashboard-shortcuts-snippets" href="/explore/snippets">Snippets
</a></li><li>
<a title="About GitLab CE" href="/help">Help</a>
</li>
</ul>

</div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="nav-item d-none d-lg-block m-auto">
<div class="search search-form" data-track-event="activate_form_input" data-track-label="navbar_search" data-track-value="">
<form class="form-inline" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><div class="search-input-container">
<div class="search-input-wrap">
<div class="dropdown" data-url="/search/autocomplete">
<input type="search" name="search" id="search" placeholder="Search or jump to…" class="search-input dropdown-menu-toggle no-outline js-search-dashboard-options" spellcheck="false" tabindex="1" autocomplete="off" data-issues-path="/dashboard/issues" data-mr-path="/dashboard/merge_requests" data-qa-selector="search_term_field" aria-label="Search or jump to…" />
<button class="hidden js-dropdown-search-toggle" data-toggle="dropdown" type="button"></button>
<div class="dropdown-menu dropdown-select js-dashboard-search-options">
<div class="dropdown-content"><ul>
<li class="dropdown-menu-empty-item">
<a>
Loading...
</a>
</li>
</ul>
</div><div class="dropdown-loading"><i aria-hidden="true" data-hidden="true" class="fa fa-spinner fa-spin"></i></div>
</div>
<svg class="s16 search-icon" data-testid="search-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#search"></use></svg>
<svg class="s16 clear-icon js-clear-input" data-testid="close-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#close"></use></svg>
</div>
</div>
</div>
<input type="hidden" name="group_id" id="group_id" value="" class="js-search-group-options" />
<input type="hidden" name="project_id" id="search_project_id" value="18471902" class="js-search-project-options" data-project-path="youtube-updater-for-pi-hole" data-name="YouTube updater for Pi-hole" data-issues-path="/grublets/youtube-updater-for-pi-hole/-/issues" data-mr-path="/grublets/youtube-updater-for-pi-hole/-/merge_requests" data-issues-disabled="false" />
<input type="hidden" name="scope" id="scope" />
<input type="hidden" name="search_code" id="search_code" value="true" />
<input type="hidden" name="snippets" id="snippets" value="false" />
<input type="hidden" name="repository_ref" id="repository_ref" value="master" />
<input type="hidden" name="nav_source" id="nav_source" value="navbar" />
<div class="search-autocomplete-opts hide" data-autocomplete-path="/search/autocomplete" data-autocomplete-project-id="18471902" data-autocomplete-project-ref="master"></div>
</form></div>

</li>
<li class="nav-item d-inline-block d-lg-none">
<a title="Search" aria-label="Search" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/search?project_id=18471902"><svg class="s16" data-testid="search-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#search"></use></svg>
</a></li>
<li class="nav-item header-help dropdown d-none d-md-block" data-track-event="click_question_mark_link" data-track-label="main_navigation" data-track-property="navigation">
<a class="header-help-dropdown-toggle" data-toggle="dropdown" href="/help"><span class="gl-sr-only">
Help
</span>
<svg class="s16" data-testid="question-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#question"></use></svg>
<svg class="s16 caret-down" data-testid="chevron-down-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#chevron-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right">
<ul>
<li>
<a target="_blank" rel="noopener noreferrer" data-track-event="click_whats_new" data-track-property="question_menu" href="https://about.gitlab.com/releases/gitlab-com/">See what&#39;s new at GitLab</a>
</li>

<li>
<a href="/help">Help</a>
</li>
<li>
<a href="https://about.gitlab.com/getting-help/">Support</a>
</li>
<li>
<a target="_blank" class="text-nowrap" rel="noopener noreferrer" data-track-event="click_forum" data-track-property="question_menu" href="https://forum.gitlab.com/">Community forum</a>

</li>
<li>
<button class="js-shortcuts-modal-trigger" type="button">
Keyboard shortcuts
<span aria-hidden class="text-secondary float-right">?</span>
</button>
</li>
<li class="divider"></li>
<li>
<a href="https://about.gitlab.com/submit-feedback">Submit feedback</a>
</li>
<li>
<a target="_blank" class="text-nowrap" href="https://about.gitlab.com/contributing">Contribute to GitLab
</a>

</li>

<li>
<a href="https://next.gitlab.com/">Switch to GitLab Next</a>
</li>
</ul>

</div>
</li>
<li class="nav-item">
<div>
<a class="gl-button btn btn-sign-in" href="/users/sign_in?redirect_to_referer=yes">Sign in / Register</a>
</div>
</li>
</ul>
</div>
<button class="navbar-toggler d-block d-sm-none" type="button">
<span class="sr-only">Toggle navigation</span>
<svg class="s12 more-icon js-navbar-toggle-right" data-testid="ellipsis_h-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#ellipsis_h"></use></svg>
<svg class="s12 close-icon js-navbar-toggle-left" data-testid="close-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#close"></use></svg>
</button>
</div>
</div>
</header>

<div class="layout-page page-with-contextual-sidebar">
<div class="nav-sidebar" data-track-event="render" data-track-label="projects_side_navigation" data-track-property="projects_side_navigation">
<div class="nav-sidebar-inner-scroll">
<div class="context-header">
<a title="YouTube updater for Pi-hole" href="/grublets/youtube-updater-for-pi-hole"><div class="avatar-container rect-avatar s40 project-avatar">
<div class="avatar s40 avatar-tile identicon bg2">Y</div>
</div>
<div class="sidebar-context-title">
YouTube updater for Pi-hole
</div>
</a></div>
<ul class="sidebar-top-level-items qa-project-sidebar">
<li class="home"><a class="shortcuts-project rspec-project-link" data-qa-selector="project_link" href="/grublets/youtube-updater-for-pi-hole"><div class="nav-icon-container">
<svg class="s16" data-testid="home-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#home"></use></svg>
</div>
<span class="nav-item-name">
Project overview
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole"><strong class="fly-out-top-item-name">
Project overview
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Project details" class="shortcuts-project" href="/grublets/youtube-updater-for-pi-hole"><span>Details</span>
</a></li><li class=""><a title="Activity" class="shortcuts-project-activity" data-qa-selector="activity_link" href="/grublets/youtube-updater-for-pi-hole/activity"><span>Activity</span>
</a></li><li class=""><a title="Releases" class="shortcuts-project-releases" href="/grublets/youtube-updater-for-pi-hole/-/releases"><span>Releases</span>
</a></li></ul>
</li><li class="active"><a class="shortcuts-tree" data-qa-selector="repository_link" href="/grublets/youtube-updater-for-pi-hole/-/tree/master"><div class="nav-icon-container">
<svg class="s16" data-testid="doc-text-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#doc-text"></use></svg>
</div>
<span class="nav-item-name" id="js-onboarding-repo-link">
Repository
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item active"><a href="/grublets/youtube-updater-for-pi-hole/-/tree/master"><strong class="fly-out-top-item-name">
Repository
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class="active"><a href="/grublets/youtube-updater-for-pi-hole/-/tree/master">Files
</a></li><li class=""><a id="js-onboarding-commits-link" href="/grublets/youtube-updater-for-pi-hole/-/commits/master">Commits
</a></li><li class=""><a data-qa-selector="branches_link" id="js-onboarding-branches-link" href="/grublets/youtube-updater-for-pi-hole/-/branches">Branches
</a></li><li class=""><a data-qa-selector="tags_link" href="/grublets/youtube-updater-for-pi-hole/-/tags">Tags
</a></li><li class=""><a href="/grublets/youtube-updater-for-pi-hole/-/graphs/master">Contributors
</a></li><li class=""><a href="/grublets/youtube-updater-for-pi-hole/-/network/master">Graph
</a></li><li class=""><a href="/grublets/youtube-updater-for-pi-hole/-/compare?from=master&amp;to=master">Compare
</a></li><li class=""><a data-qa-selector="path_locks_link" href="/grublets/youtube-updater-for-pi-hole/path_locks">Locked Files
</a></li>
</ul>
</li><li class=""><a class="shortcuts-issues qa-issues-item" href="/grublets/youtube-updater-for-pi-hole/-/issues"><div class="nav-icon-container">
<svg class="s16" data-testid="issues-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#issues"></use></svg>
</div>
<span class="nav-item-name" id="js-onboarding-issues-link">
Issues
</span>
<span class="badge badge-pill count issue_counter">
12
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/issues"><strong class="fly-out-top-item-name">
Issues
</strong>
<span class="badge badge-pill count issue_counter fly-out-badge">
12
</span>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Issues" href="/grublets/youtube-updater-for-pi-hole/-/issues"><span>
List
</span>
</a></li><li class=""><a title="Boards" data-qa-selector="issue_boards_link" href="/grublets/youtube-updater-for-pi-hole/-/boards"><span>
Boards
</span>
</a></li><li class=""><a title="Labels" class="qa-labels-link" href="/grublets/youtube-updater-for-pi-hole/-/labels"><span>
Labels
</span>
</a></li><li class=""><a title="Service Desk" href="/grublets/youtube-updater-for-pi-hole/-/issues/service_desk">Service Desk
</a></li>
<li class=""><a title="Milestones" class="qa-milestones-link" href="/grublets/youtube-updater-for-pi-hole/-/milestones"><span>
Milestones
</span>
</a></li><li class=""><a title="Iterations" href="/grublets/youtube-updater-for-pi-hole/-/iterations"><span>
Iterations
</span>
</a></li>
</ul>
</li><li class=""><a class="shortcuts-merge_requests" data-qa-selector="merge_requests_link" href="/grublets/youtube-updater-for-pi-hole/-/merge_requests"><div class="nav-icon-container">
<svg class="s16" data-testid="git-merge-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#git-merge"></use></svg>
</div>
<span class="nav-item-name" id="js-onboarding-mr-link">
Merge Requests
</span>
<span class="badge badge-pill count merge_counter js-merge-counter">
2
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/merge_requests"><strong class="fly-out-top-item-name">
Merge Requests
</strong>
<span class="badge badge-pill count merge_counter js-merge-counter fly-out-badge">
2
</span>
</a></li></ul>
</li><li class=""><a class="qa-project-requirements-link" href="/grublets/youtube-updater-for-pi-hole/-/requirements_management/requirements"><div class="nav-icon-container">
<svg class="s16" data-testid="requirements-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#requirements"></use></svg>
</div>
<span class="nav-item-name">
Requirements
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/requirements_management/requirements"><strong class="fly-out-top-item-name">Requirements</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class="home"><a title="List" href="/grublets/youtube-updater-for-pi-hole/-/requirements_management/requirements"><span>List</span>
</a></li></ul>
</li>
<li class=""><a class="shortcuts-pipelines qa-link-pipelines rspec-link-pipelines" data-qa-selector="ci_cd_link" href="/grublets/youtube-updater-for-pi-hole/-/pipelines"><div class="nav-icon-container">
<svg class="s16" data-testid="rocket-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#rocket"></use></svg>
</div>
<span class="nav-item-name" id="js-onboarding-pipelines-link">
CI / CD
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/pipelines"><strong class="fly-out-top-item-name">
CI / CD
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Pipelines" class="shortcuts-pipelines" href="/grublets/youtube-updater-for-pi-hole/-/pipelines"><span>
Pipelines
</span>
</a></li><li class=""><a title="Jobs" class="shortcuts-builds" href="/grublets/youtube-updater-for-pi-hole/-/jobs"><span>
Jobs
</span>
</a></li><li class=""><a title="Schedules" class="shortcuts-builds" href="/grublets/youtube-updater-for-pi-hole/-/pipeline_schedules"><span>
Schedules
</span>
</a></li>
</ul>
</li><li class=""><a data-qa-selector="dependency_list_link" href="/grublets/youtube-updater-for-pi-hole/-/dependencies"><div class="nav-icon-container">
<svg class="s16" data-testid="shield-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#shield"></use></svg>
</div>
<span class="nav-item-name">
Security &amp; Compliance
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/dependencies"><strong class="fly-out-top-item-name">
Security &amp; Compliance
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Dependency List" data-qa-selector="dependency_list_link" href="/grublets/youtube-updater-for-pi-hole/-/dependencies"><span>Dependency List</span>
</a></li><li class=""><a title="License Compliance" data-qa-selector="licenses_list_link" href="/grublets/youtube-updater-for-pi-hole/-/licenses"><span>License Compliance</span>
</a></li></ul>
</li>
<li class=""><a class="shortcuts-operations" data-qa-selector="operations_link" href="/grublets/youtube-updater-for-pi-hole/-/environments/metrics"><div class="nav-icon-container">
<svg class="s16" data-testid="cloud-gear-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#cloud-gear"></use></svg>
</div>
<span class="nav-item-name">
Operations
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/environments/metrics"><strong class="fly-out-top-item-name">
Operations
</strong>
</a></li><li class="divider fly-out-top-item"></li>

<li class=""><a title="Incidents" data-qa-selector="operations_incidents_link" href="/grublets/youtube-updater-for-pi-hole/-/incidents"><span>
Incidents
</span>
</a></li><li class=""><a title="Environments" class="shortcuts-environments qa-operations-environments-link" href="/grublets/youtube-updater-for-pi-hole/-/environments"><span>
Environments
</span>
</a></li></ul>
</li><li class=""><a data-qa-selector="packages_link" href="/grublets/youtube-updater-for-pi-hole/-/packages"><div class="nav-icon-container">
<svg class="s16" data-testid="package-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#package"></use></svg>
</div>
<span class="nav-item-name">
Packages &amp; Registries
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/packages"><strong class="fly-out-top-item-name">
Packages &amp; Registries
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Package Registry" href="/grublets/youtube-updater-for-pi-hole/-/packages"><span>Package Registry</span>
</a></li><li class=""><a class="shortcuts-container-registry" title="Container Registry" href="/grublets/youtube-updater-for-pi-hole/container_registry"><span>Container Registry</span>
</a></li></ul>
</li>
<li class=""><a data-qa-selector="analytics_anchor" href="/grublets/youtube-updater-for-pi-hole/-/value_stream_analytics"><div class="nav-icon-container">
<svg class="s16" data-testid="chart-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#chart"></use></svg>
</div>
<span class="nav-item-name" data-qa-selector="analytics_link">
Analytics
</span>
</a><ul class="sidebar-sub-level-items" data-qa-selector="analytics_sidebar_submenu">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/value_stream_analytics"><strong class="fly-out-top-item-name">
Analytics
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="CI / CD" href="/grublets/youtube-updater-for-pi-hole/-/pipelines/charts"><span>CI / CD</span>
</a></li><li class=""><a title="Code Review" href="/grublets/youtube-updater-for-pi-hole/-/analytics/code_reviews"><span>Code Review</span>
</a></li><li class=""><a class="shortcuts-project-insights" data-qa-selector="project_insights_link" title="Insights" href="/grublets/youtube-updater-for-pi-hole/insights/"><span>Insights</span>
</a></li><li class=""><a title="Issue" href="/grublets/youtube-updater-for-pi-hole/-/analytics/issues_analytics"><span>Issue</span>
</a></li><li class=""><a class="shortcuts-repository-charts" title="Repository" href="/grublets/youtube-updater-for-pi-hole/-/graphs/master/charts"><span>Repository</span>
</a></li><li class=""><a class="shortcuts-project-cycle-analytics" title="Value Stream" href="/grublets/youtube-updater-for-pi-hole/-/value_stream_analytics"><span>Value Stream</span>
</a></li></ul>
</li>
<li class=""><a class="shortcuts-wiki" data-qa-selector="wiki_link" href="/grublets/youtube-updater-for-pi-hole/-/wikis/home"><div class="nav-icon-container">
<svg class="s16" data-testid="book-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#book"></use></svg>
</div>
<span class="nav-item-name">
Wiki
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/wikis/home"><strong class="fly-out-top-item-name">
Wiki
</strong>
</a></li></ul>
</li>
<li class=""><a class="shortcuts-snippets" data-qa-selector="snippets_link" href="/grublets/youtube-updater-for-pi-hole/-/snippets"><div class="nav-icon-container">
<svg class="s16" data-testid="snippet-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#snippet"></use></svg>
</div>
<span class="nav-item-name">
Snippets
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/snippets"><strong class="fly-out-top-item-name">
Snippets
</strong>
</a></li></ul>
</li><li class=""><a title="Members" class="qa-members-link" id="js-onboarding-members-link" href="/grublets/youtube-updater-for-pi-hole/-/project_members"><div class="nav-icon-container">
<svg class="s16" data-testid="users-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#users"></use></svg>
</div>
<span class="nav-item-name">
Members
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/grublets/youtube-updater-for-pi-hole/-/project_members"><strong class="fly-out-top-item-name">
Members
</strong>
</a></li></ul>
</li><a class="toggle-sidebar-button js-toggle-sidebar qa-toggle-sidebar rspec-toggle-sidebar" role="button" title="Toggle sidebar" type="button">
<svg class="s16 icon-chevron-double-lg-left" data-testid="chevron-double-lg-left-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#chevron-double-lg-left"></use></svg>
<svg class="s16 icon-chevron-double-lg-right" data-testid="chevron-double-lg-right-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#chevron-double-lg-right"></use></svg>
<span class="collapse-text">Collapse sidebar</span>
</a>
<button name="button" type="button" class="close-nav-button"><svg class="s16" data-testid="close-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#close"></use></svg>
<span class="collapse-text">Close sidebar</span>
</button>
<li class="hidden">
<a title="Activity" class="shortcuts-project-activity" href="/grublets/youtube-updater-for-pi-hole/activity"><span>
Activity
</span>
</a></li>
<li class="hidden">
<a title="Network" class="shortcuts-network" href="/grublets/youtube-updater-for-pi-hole/-/network/master">Graph
</a></li>
<li class="hidden">
<a class="shortcuts-new-issue" href="/grublets/youtube-updater-for-pi-hole/-/issues/new">Create a new issue
</a></li>
<li class="hidden">
<a title="Jobs" class="shortcuts-builds" href="/grublets/youtube-updater-for-pi-hole/-/jobs">Jobs
</a></li>
<li class="hidden">
<a title="Commits" class="shortcuts-commits" href="/grublets/youtube-updater-for-pi-hole/-/commits/master">Commits
</a></li>
<li class="hidden">
<a title="Issue Boards" class="shortcuts-issue-boards" href="/grublets/youtube-updater-for-pi-hole/-/boards">Issue Boards</a>
</li>
</ul>
</div>
</div>

<div class="content-wrapper">
<div class="mobile-overlay"></div>

<div class="alert-wrapper">













<nav class="breadcrumbs container-fluid container-limited" role="navigation">
<div class="breadcrumbs-container">
<button name="button" type="button" class="toggle-mobile-nav"><span class="sr-only">Open sidebar</span>
<svg class="s16" data-testid="hamburger-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#hamburger"></use></svg>
</button><div class="breadcrumbs-links js-title-container" data-qa-selector="breadcrumb_links_content">
<ul class="list-unstyled breadcrumbs-list js-breadcrumbs-list">
<li><a href="/grublets">grub</a><svg class="s8 breadcrumbs-list-angle" data-testid="angle-right-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#angle-right"></use></svg></li> <li><a href="/grublets/youtube-updater-for-pi-hole"><span class="breadcrumb-item-text js-breadcrumb-item-text">YouTube updater for Pi-hole</span></a><svg class="s8 breadcrumbs-list-angle" data-testid="angle-right-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#angle-right"></use></svg></li>

<li>
<h2 class="breadcrumbs-sub-title"><a href="/grublets/youtube-updater-for-pi-hole/-/blob/master/youtube.update.sh">Repository</a></h2>
</li>
</ul>
</div>

</div>
</nav>

</div>
<div class="container-fluid container-limited ">
<div class="content" id="content-body">
<div class="flash-container flash-container-page sticky">
</div>

<div class="js-signature-container" data-signatures-path="/grublets/youtube-updater-for-pi-hole/-/commits/8693074fe74bcf3b1a9a23d780f11ed736084c71/signatures?limit=1"></div>

<div class="tree-holder" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-container">
<div class="tree-ref-holder">
<form class="project-refs-form" action="/grublets/youtube-updater-for-pi-hole/-/refs/switch" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="destination" id="destination" value="blob" />
<input type="hidden" name="path" id="path" value="youtube.update.sh" />
<div class="dropdown">
<button class="dropdown-menu-toggle js-project-refs-dropdown qa-branches-select" type="button" data-toggle="dropdown" data-selected="master" data-ref="master" data-refs-url="/grublets/youtube-updater-for-pi-hole/refs?sort=updated_desc" data-field-name="ref" data-submit-form-on-click="true" data-visit="true"><span class="dropdown-toggle-text ">master</span><i aria-hidden="true" data-hidden="true" class="fa fa-chevron-down"></i></button>
<div class="dropdown-menu dropdown-menu-paging dropdown-menu-selectable git-revision-dropdown qa-branches-dropdown">
<div class="dropdown-page-one">
<div class="dropdown-title gl-display-flex"><span class="gl-ml-auto">Switch branch/tag</span><button class="dropdown-title-button dropdown-menu-close gl-ml-auto" aria-label="Close" type="button"><svg class="s16 dropdown-menu-close-icon" data-testid="close-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#close"></use></svg></button></div>
<div class="dropdown-input"><input type="search" id="" class="dropdown-input-field qa-dropdown-input-field" placeholder="Search branches and tags" autocomplete="off" /><svg class="s16 dropdown-input-search" data-testid="search-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#search"></use></svg><svg class="s16 dropdown-input-clear js-dropdown-input-clear" data-testid="close-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#close"></use></svg></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><i aria-hidden="true" data-hidden="true" class="fa fa-spinner fa-spin"></i></div>
</div>
</div>
</div>
</form>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li class="breadcrumb-item">
<a href="/grublets/youtube-updater-for-pi-hole/-/tree/master">youtube-updater-for-pi-hole
</a></li>
<li class="breadcrumb-item">
<a href="/grublets/youtube-updater-for-pi-hole/-/blob/master/youtube.update.sh"><strong>youtube.update.sh</strong>
</a></li>
</ul>
</div>
<div class="tree-controls gl-children-ml-sm-3"><a class="btn shortcuts-find-file" rel="nofollow" href="/grublets/youtube-updater-for-pi-hole/-/find_file/master">Find file
</a><a class="btn js-blob-blame-link" href="/grublets/youtube-updater-for-pi-hole/-/blame/master/youtube.update.sh">Blame</a><a class="btn" href="/grublets/youtube-updater-for-pi-hole/-/commits/master/youtube.update.sh">History</a><a class="btn js-data-file-blob-permalink-url" href="/grublets/youtube-updater-for-pi-hole/-/blob/86cf3cf17f338404d3aaaa7e07ab362c8e9e3028/youtube.update.sh">Permalink</a></div>
</div>

<div class="info-well d-none d-sm-block">
<div class="well-segment">
<ul class="blob-commit-info">
<li class="commit flex-row js-toggle-container" id="commit-8693074f">
<div class="avatar-cell d-none d-sm-block">
<a href="/grublets"><img alt="grub&#39;s avatar" src="/uploads/-/system/user/avatar/4692008/avatar.png?width=40" class="avatar s40 d-none d-sm-inline-block" title="grub" /></a>
</div>
<div class="commit-detail flex-list">
<div class="commit-content qa-commit-content">
<a class="commit-row-message item-title js-onboarding-commit-item " href="/grublets/youtube-updater-for-pi-hole/-/commit/8693074fe74bcf3b1a9a23d780f11ed736084c71">There was some confusion about reload-lists vs. reload when updating lists.</a>
<span class="commit-row-message d-inline d-sm-none">
&middot;
8693074f
</span>
<div class="committer">
<a class="commit-author-link js-user-link" data-user-id="4692008" href="/grublets">grub</a> authored <time class="js-timeago" title="May 8, 2020 2:37pm" datetime="2020-05-08T14:37:05Z" data-toggle="tooltip" data-placement="bottom" data-container="body">May 08, 2020</time>
</div>

</div>
<div class="commit-actions flex-row">

<div class="js-commit-pipeline-status" data-endpoint="/grublets/youtube-updater-for-pi-hole/-/commit/8693074fe74bcf3b1a9a23d780f11ed736084c71/pipelines?ref=master"></div>
<div class="commit-sha-group d-none d-sm-flex">
<div class="label label-monospace monospace">
8693074f
</div>
<button class="btn btn btn-default" data-toggle="tooltip" data-placement="bottom" data-container="body" data-title="Copy commit SHA" data-class="btn btn-default" data-clipboard-text="8693074fe74bcf3b1a9a23d780f11ed736084c71" type="button" title="Copy commit SHA" aria-label="Copy commit SHA"><svg class="s16" data-testid="copy-to-clipboard-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#copy-to-clipboard"></use></svg></button>

</div>
</div>
</div>
</li>

</ul>
</div>


</div>
<div class="blob-content-holder" id="blob-content-holder">
<article class="file-holder">
<div class="js-file-title file-title-flex-parent">
<div class="file-header-content">
<svg class="s16" data-testid="doc-text-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#doc-text"></use></svg>
<strong class="file-title-name">
youtube.update.sh
</strong>
<button class="btn btn-clipboard btn-transparent" data-toggle="tooltip" data-placement="bottom" data-container="body" data-class="btn-clipboard btn-transparent" data-title="Copy file path" data-clipboard-text="{&quot;text&quot;:&quot;youtube.update.sh&quot;,&quot;gfm&quot;:&quot;`youtube.update.sh`&quot;}" type="button" title="Copy file path" aria-label="Copy file path"><svg class="s16" data-testid="copy-to-clipboard-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#copy-to-clipboard"></use></svg></button>
<small class="mr-1">
1.4 KB
</small>
</div>

<div class="file-actions"><a class="btn btn-primary js-edit-blob ml-2  btn-sm" data-track-event="click_edit" data-track-label="Edit" href="/grublets/youtube-updater-for-pi-hole/-/edit/master/youtube.update.sh">Edit</a><a class="btn btn-primary ide-edit-button ml-2 btn-inverted btn-sm" data-track-event="click_edit_ide" data-track-label="Web IDE" data-track-property="secondary" href="/-/ide/project/grublets/youtube-updater-for-pi-hole/edit/master/-/youtube.update.sh">Web IDE</a><div class="btn-group ml-2" role="group">


</div><div class="btn-group ml-2" role="group">
<button class="btn btn btn-sm js-copy-blob-source-btn" data-toggle="tooltip" data-placement="bottom" data-container="body" data-class="btn btn-sm js-copy-blob-source-btn" data-title="Copy file contents" data-clipboard-target=".blob-content[data-blob-id=&#39;b9a33b560ed7eca7bd82c9601bd31c2396083ab3&#39;]" type="button" title="Copy file contents" aria-label="Copy file contents"><svg class="s16" data-testid="copy-to-clipboard-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#copy-to-clipboard"></use></svg></button>
<a class="btn btn-sm has-tooltip" target="_blank" rel="noopener noreferrer" aria-label="Open raw" title="Open raw" data-container="body" href="/grublets/youtube-updater-for-pi-hole/-/raw/master/youtube.update.sh"><svg class="s16" data-testid="doc-code-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#doc-code"></use></svg></a>
<a download="youtube.update.sh" class="btn btn-sm has-tooltip" target="_blank" rel="noopener noreferrer" aria-label="Download" title="Download" data-container="body" href="/grublets/youtube-updater-for-pi-hole/-/raw/master/youtube.update.sh?inline=false"><svg class="s16" data-testid="download-icon"><use xlink:href="https://gitlab.com/assets/icons-1e863578ceb6844cc6941dadfd4b07001aed5876dc579fe61ea58ffd1458e7e8.svg#download"></use></svg></a>

</div></div>
</div>

<script id="js-file-lock" type="application/json">
{"path":"youtube.update.sh","toggle_path":"/grublets/youtube-updater-for-pi-hole/path_locks/toggle"}
</script>


<div data-blob-data="#!/bin/bash

# crappy hack that seems to keep YouTube ads to a minumum.
# over two hours of Peppa Pig and no ads. Taking one for the team...
# grub@grub.net v0.11

# Change forceIP to the real IP from an nslookup of a 
# googlevideo hostname so you get something in your 
# geographical region. You can find one in your
# Pi-hole&#39;s query logs.
# They will look something like this:
#     r6---sn-ni5f-tfbl.googlevideo.com

# as root: run this once then run &quot;pihole restartdns&quot;
# You can cron this for auto-updating of the host file.
# Mine fires every minute:
# * * * * * /home/grub/bin/youtube.update.sh 2&gt;&amp;1

forceIP=&quot;195.121.71.17&quot;

# nothing below here should need changing

piLogs=&quot;/var/log/pihole.log&quot;
ytHosts=&quot;/etc/hosts.youtube&quot;

workFile=$(mktemp)
dnsmasqFile=&quot;/etc/dnsmasq.d/99-youtube.grublets.conf&quot;

if [ ! -f $dnsmasqFile ]; then
    echo &quot;addn-hosts=$ytHosts&quot; &gt; $dnsmasqFile
    touch $ytHosts
    piLogs=&quot;$piLogs*&quot; # preload with results from all logs
    echo &quot;Setup complete! Execute &#39;pihole restartdns&#39; as root.&quot;
    echo &quot;cron the script to run every minute or so for updates.&quot;
fi

cp $ytHosts $workFile
zgrep -e &quot;reply.*-.*\.googlevideo.*\..*\..*\..*&quot; $piLogs \
    | awk -v fIP=$forceIP &#39;{ print fIP, $6 }&#39; &gt;&gt; $workFile

sort -u $workFile -o $workFile

if ! cmp $workFile $ytHosts; then
    mv $workFile $ytHosts
    chmod 644 $ytHosts	
    /usr/local/bin/pihole restartdns reload
else
    rm $workFile
fi


exit
" data-is-ci-config-file="false" id="js-blob-toggle-graph-preview"></div>
<div class="blob-viewer" data-path="youtube.update.sh" data-type="simple" data-url="/grublets/youtube-updater-for-pi-hole/-/blob/master/youtube.update.sh?format=json&amp;viewer=simple">
<div class="text-center gl-mt-4 gl-mb-3">
<span class="gl-spinner gl-spinner-orange gl-spinner-md qa-spinner" aria-label="Loading"></span>
</div>

</div>


</article>
</div>

<div class="modal" id="modal-upload-blob">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<h3 class="page-title">Replace youtube.update.sh</h3>
<button aria-label="Close" class="close" data-dismiss="modal" type="button">
<span aria-hidden>&times;</span>
</button>
</div>
<div class="modal-body">
<form class="js-quick-submit js-upload-blob-form" data-method="put" action="/grublets/youtube-updater-for-pi-hole/-/update/master/youtube.update.sh" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="5jGvlQM6VKnjWnp4/DQk5cFxmt39nY+IgTp162paGVSySikcQlsc9RO5aYa/FXGqkHJze0uXtJrtObc8sn+ZzQ==" /><div class="dropzone">
<div class="dropzone-previews blob-upload-dropzone-previews">
<p class="dz-message light">
Attach a file by drag &amp; drop or <a class="markdown-selector" href="#">click to upload</a>
</p>
</div>
</div>
<br>
<div class="dropzone-alerts gl-alert gl-alert-danger gl-mb-5 data" style="display:none"></div>
<div class="form-group row commit_message-group">
<label class="col-form-label col-sm-2" for="commit_message-cfcce7d01221f421ff1cd699455eb704">Commit message
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-cfcce7d01221f421ff1cd699455eb704" class="form-control js-commit-message" placeholder="Replace youtube.update.sh" required="required" rows="3">
Replace youtube.update.sh</textarea>
</div>
</div>
</div>

<input type="hidden" name="branch_name" id="branch_name" />
<input type="hidden" name="create_merge_request" id="create_merge_request" value="1" />
<input type="hidden" name="original_branch" id="original_branch" value="master" class="js-original-branch" />

<div class="form-actions">
<button name="button" type="button" class="btn gl-button btn-success btn-upload-file" id="submit-all"><i aria-hidden="true" data-hidden="true" class="fa fa-spin fa-spinner js-loading-icon hidden"></i>
Replace file
</button><a class="btn gl-button btn-cancel" data-dismiss="modal" href="#">Cancel</a>
<div class="inline gl-ml-3">
A new branch will be created in your fork and a new merge request will be started.
</div>

</div>
</form></div>
</div>
</div>
</div>

</div>


</div>
</div>
</div>
</div>


<script nonce="Xqr6IRbQXMxOQ/8RGmPwxQ==">
//<![CDATA[
if ('loading' in HTMLImageElement.prototype) {
  document.querySelectorAll('img.lazy').forEach(img => {
    img.loading = 'lazy';
    let imgUrl = img.dataset.src;
    // Only adding width + height for avatars for now
    if (imgUrl.indexOf('/avatar/') > -1 && imgUrl.indexOf('?') === -1) {
      const targetWidth = img.getAttribute('width') || img.width;
      imgUrl += `?width=${targetWidth}`;
    }
    img.src = imgUrl;
    img.removeAttribute('data-src');
    img.classList.remove('lazy');
    img.classList.add('js-lazy-loaded', 'qa-js-lazy-loaded');
  });
}

//]]>
</script>

</body>
</html>

