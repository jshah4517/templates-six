<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    <link rel="icon" href="/includes/images/favicon.ico" type="image/vnd.microsoft.icon" />
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700|Roboto:300,400,500' rel='stylesheet' type='text/css' />
    <link href="/includes/css/style.css" rel="stylesheet" />
    <link href="/includes/css/mobile.css" rel="stylesheet" />

    <script src="/includes/js/jquery.cookie.js"></script>
    <script src="/includes/js/jquery.cookiecuttr.js"></script>
    <link href="/css/cookiecuttr.css" rel="stylesheet" type="text/css">
    <link href="/css/style.css?v=1563749485" rel="stylesheet" type="text/css">
    <link href="/css/mobile.css" rel="stylesheet" type="text/css">

    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">

{$headeroutput}

{include_php file='../includes/header_smarty.php'}

<section id="main-menu">

    <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="primary-nav">

                <ul class="nav navbar-nav">

                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                </ul>

                <ul class="nav navbar-nav navbar-right">

                    {if $languagechangeenabled && count($locales) > 1}
                        <li>
                            <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                                {$activeLocale.localisedName}
                                <b class="caret"></b>
                            </a>
                            <div id="languageChooserContent" class="hidden">
                                <ul>
                                    {foreach $locales as $locale}
                                        <li>
                                            <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                        </li>
                                    {/foreach}
                                </ul>
                            </div>
                        </li>
                    {/if}
                    {if $loggedin}
                    <li>
                        <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                            {$LANG.notifications}
                            {if count($clientAlerts) > 0}
                                <span class="label label-info">{lang key='notificationsnew'}</span>
                            {/if}
                            <b class="caret"></b>
                        </a>
                        <div id="accountNotificationsContent" class="hidden">
                            <ul class="client-alerts">
                                {foreach $clientAlerts as $alert}
                                    <li>
                                        <a href="{$alert->getLink()}">
                                            <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                            <div class="message">{$alert->getMessage()}</div>
                                        </a>
                                    </li>
                                    {foreachelse}
                                    <li class="none">
                                        {$LANG.notificationsnone}
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                    </li>
                    {/if}

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                </ul>

            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

</section>

{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
