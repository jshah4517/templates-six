{if $modulecustombuttonresult}
    {if $modulecustombuttonresult == "success"}
        {include file="$template/includes/alert.tpl" type="success" msg=$LANG.moduleactionsuccess textcenter=true idname="alertModuleCustomButtonSuccess"}
    {else}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.moduleactionfailed|cat:' ':$modulecustombuttonresult textcenter=true idname="alertModuleCustomButtonFailed"}
    {/if}
{/if}

{if $pendingcancellation}
    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.cancellationrequestedexplanation textcenter=true idname="alertPendingCancellation"}
{/if}

<div class="tab-content margin-bottom">
    <div class="tab-pane fade in active" id="tabOverview">

        {if $tplOverviewTabOutput}
            {$tplOverviewTabOutput}
        {else}

            <div align="center" style="border: 1px solid #ddd; border-radius: 4px; margin-bottom: 40px; padding: 12px;">
                {if $groupname eq 'ArcticDesk'}<table>
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_arcticdesk.png" alt="ArcticDesk" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://www.arcticdesk.com">http://www.arcticdesk.com</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Client Area: <a href="https://www.arcticdesk.com/manage/clientarea.php">https://www.arcticdesk.com/manage/clientarea.php</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Submit a Ticket: <a href="https://www.arcticdesk.com/support/index.php?module=tickets&sec=submit.step1">https://www.arcticdesk.com/support/index.php?module=tickets&sec=submit.step1</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'Blesta'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="2" style="padding-right: 16px;"><img src="/includes/images/products_blesta.png" alt="Blesta" width="170" height="79" /></td>
                        <td rowspan="2" width="15"></td>
                        <td valign="bottom" height="42">Company Website: <a href="http://blesta.com/">http://blesta.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top">Support Address: <a href="mailto:support@blesta.com">support@blesta.com</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'ClientExec'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="2" style="padding-right: 16px;"><img src="/includes/images/products_clientexec.png" alt="ClientExec" width="170" height="79" /></td>
                        <td rowspan="2" width="15"></td>
                        <td valign="bottom" height="42">Company Website: <a href="http://clientexec.com">http://clientexec.com</a></td>
                    </tr>
                    <tr>
                        <td valign="top">Submit a Ticket: <a href="https://www.clientexec.com/members/index.php?fuse=support&controller=ticket&view=submitticket">https://www.clientexec.com/members/</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'CloudLinux'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_cloudlinux.png" alt="CloudLinux" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://cloudlinux.com/">http://cloudlinux.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Documentation: <a href="http://cloudlinux.com/docs/">http://cloudlinux.com/docs/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Support: <a href="http://www.cloudlinux.com/support/">http://cloudlinux.com/support/</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'cPanel'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_cpanel.png" alt="cPanel" width="170" height="79" /></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://cpanel.net/">http://cpanel.net/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Documentation: <a href="http://docs.cpanel.net/twiki/bin/view/AllDocumentation/">http://docs.cpanel.net/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Open a Ticket: <a href="https://licensepal.com/manage/submitticket.php">https://licensepal.com/manage/submitticket.php</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'Imunify360'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_imunify360.png" alt="Imunify360" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="https://www.imunify360.com/">https://www.imunify360.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Documentation: <a href="https://docs.imunify360.com/">https://docs.imunify360.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Support: <a href="http://www.cloudlinux.com/support/">http://cloudlinux.com/support/</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'Installatron'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td align="center"><img src="/includes/images/products_installatron.png" alt="Installatron" width="170" height="79" /></td>
                </table>
                {elseif $groupname eq 'InterWorx'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_interworx.png" alt="InterWorx" width="170" height="79" /></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://www.interworx.com/">http://www.interworx.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Documentation: <a href="http://docs.interworx.com/">http://docs.interworx.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Open a Ticket: <a href="https://licensepal.com/manage/submitticket.php">https://licensepal.com/manage/submitticket.php</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'KernelCare'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_kernelcare.png" alt="KernelCare" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://kernelcare.com/">http://kernelcare.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Documentation: <a href="http://docs.kernelcare.com/">http://docs.kernelcare.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Support: <a href="https://helpdesk.cloudlinux.com/">https://helpdesk.cloudlinux.com/</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'LiteSpeed' or $groupname eq 'LiteSpeed (Old)'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td align="center"><img src="/includes/images/products_litespeed.png" alt="LiteSpeed" width="170" height="79" /></td>
                </table>
                {elseif $groupname eq 'RVSiteBuilder Pro'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_rvsitebuilder.png" alt="RVSiteBuilder Pro" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://rvsitebuilder.com/">http://rvsitebuilder.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Knowledgebase: <a href="http://support.rvsitebuilder.com/">http://support.rvsitebuilder.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Submit Ticket: <a href="https://support.rvsitebuilder.com/index.php?x=&amp;mod_id=4">https://support.rvsitebuilder.com/index.php?x=&amp;mod_id=4</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'RVSkin'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_rvskin.png" alt="RVSkin" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://rvskin.com/">http://rvskin.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Knowledgebase: <a href="http://support.rvskin.com/">http://support.rvskin.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Submit Ticket: <a href="https://support.rvskin.com/index.php?x=&mod_id=4&t=1">https://support.rvskin.com/index.php?x=&amp;mod_id=4&&amp;=1</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'SitePad'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td align="center"><img src="/includes/images/products_sitepad.png" alt="SitePad" width="170" height="79" /></td>
                </table>
                {elseif $groupname eq 'Softaculous'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td align="center"><img src="/includes/images/products_softaculous.png" alt="Softaculous" width="170" height="79" /></td>
                </table>
                {elseif $groupname eq 'SolusVM'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_solusvm.png" alt="SolusVM" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://solusvm.com/">http://solusvm.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Documentation: <a href="http://wiki.solusvm.com/index.php/Category:Documentation">http://wiki.solusvm.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Support: <a href="mailto:general-support@soluslabs.com">general-support@soluslabs.com</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'Virtualizor'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td align="center"><img src="/includes/images/products_virtualizor.png" alt="Virtualizor" width="170" height="79" /></td>
                </table>
                {elseif $groupname eq 'WHMSonic'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="2" style="padding-right: 16px;"><img src="/includes/images/products_whmsonic.png" alt="WHMSonic" width="170" height="79" /></td>
                        <td rowspan="2" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://whmsonic.com/">http://whmsonic.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Support: <a href="http://www.whmsonic.com/support/">http://whmsonic.com/support/</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'WHMXtra'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_whmxtra.gif" alt="WHMXtra" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://whmxtra.com/">http://whmxtra.com/</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Documentation: <a href="http://whmxtra.com/docs/index.php?action=WebHelp">http://whmxtra.com/docs/</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Support: <a href="http://whmxtra.com/members/customers/index.php?task=contact">http://whmxtra.com/members/</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'WHMCS'}<table border="0" cellspacing="0" cellpadding="5">
                    <tr>
                        <td rowspan="3" style="padding-right: 16px;"><img src="/includes/images/products_whmcs.gif" alt="WHMCS" width="170" height="79" /></td>
                        <td rowspan="3" width="15"></td>
                        <td valign="bottom" height="25">Company Website: <a href="http://whmcs.com">http://whmcs.com</a></td>
                    </tr>
                    <tr>
                        <td valign="middle" height="25">Client Area: <a href="https://whmcs.com/members/clientarea.php">https://whmcs.com/members/clientarea.php</a></td>
                    </tr>
                    <tr>
                        <td valign="top" height="25">Submit a Ticket: <a href="https://whmcs.com/members/submitticket.php">https://whmcs.com/members/submitticket.php</a></td>
                    </tr>
                </table>
                {elseif $groupname eq 'Services' || $groupname eq 'Services - Integration' || $groupname eq 'Services - Installation' || $groupname eq 'Services - Upgrade'}<img src="/includes/images/products_services.gif" alt="Services" width="170" height="79" />
                {/if}
            </div>

            <div class="product-details clearfix">

                <div class="row">
                    <div class="col-md-6">

                        <div class="product-status product-status-{$rawstatus|strtolower}">
                            <div class="product-icon text-center">
                                <span class="fa-stack fa-lg">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fas fa-{if $type eq "hostingaccount" || $type == "reselleraccount"}hdd{elseif $type eq "server"}database{else}archive{/if} fa-stack-1x fa-inverse"></i>
                                </span>
                                <h3>{$product}</h3>
                                <h4>{$groupname}</h4>
                                <p>{$domain}</p>
                            </div>
                            <div class="product-status-text">
                                {$status}
                            </div>
                        </div>

                        {if $showcancelbutton || $packagesupgrade}
                            <div class="row">
                                {if $packagesupgrade}
                                    <div class="col-xs-{if $showcancelbutton}6{else}12{/if}">
                                        <a href="upgrade.php?type=package&amp;id={$id}" class="btn btn-block btn-success">{$LANG.upgrade}</a>
                                    </div>
                                {/if}
                                {if $showcancelbutton}
                                    <div class="col-xs-{if $packagesupgrade}6{else}12{/if}">
                                        <a href="clientarea.php?action=cancel&amp;id={$id}" class="btn btn-block btn-danger {if $pendingcancellation}disabled{/if}">{if $pendingcancellation}{$LANG.cancellationrequested}{else}{$LANG.clientareacancelrequestbutton}{/if}</a>
                                    </div>
                                {/if}
                            </div>
                        {/if}

                    </div>
                    <div class="col-md-6 text-center">

                        <h5 style="margin-top: 0;">{$LANG.clientareahostingregdate}</h5>
                        {$regdate}

                        {if $firstpaymentamount neq $recurringamount}
                            <h5>{$LANG.firstpaymentamount}</h5>
                            {$firstpaymentamount}
                        {/if}

                        {if $billingcycle != $LANG.orderpaymenttermonetime && $billingcycle != $LANG.orderfree}
                            <h5>{$LANG.recurringamount}</h5>
                            {$recurringamount}
                        {/if}

                        <h5>{$LANG.orderbillingcycle}</h5>
                        {$billingcycle}

                        <h5>{$LANG.clientareahostingnextduedate}</h5>
                        {$nextduedate}

                        <h5>{$LANG.orderpaymentmethod}</h5>
                        {$paymentmethod}

                        {if $suspendreason}
                            <h5>{$LANG.suspendreason}</h5>
                            {$suspendreason}
                        {/if}

                    </div>
                </div>

            </div>

            {foreach $hookOutput as $output}
                <div>
                    {$output}
                </div>
            {/foreach}

            {if $domain || $moduleclientarea || $configurableoptions || $customfields || $lastupdate}
                <div class="row clearfix">
                    <div class="col-xs-12">
                        <ul class="nav nav-tabs nav-tabs-overflow">
                            {if $domain}
                                <li class="active">
                                    <a href="#domain" data-toggle="tab"><i class="fas fa-info fa-fw"></i> {$LANG.additionalInfo}</a>
                                </li>
                            {elseif $moduleclientarea}
                                <li class="active">
                                    <a href="#manage" data-toggle="tab"><i class="fas fa-globe fa-fw"></i> {$LANG.manage}</a>
                                </li>
                            {/if}
                        </ul>
                    </div>
                </div>

                <div class="tab-content product-details-tab-container">
                    {if $domain}
                        <div class="tab-pane fade in active text-center" id="domain">
                            {foreach from=$customfields item=field}
                                <div class="row">
                                    <div class="col-sm-5 text-right">
                                        <strong>{$field.name}</strong>
                                    </div>
                                    <div class="col-sm-7 text-left">
                                        {$field.value}
                                    </div>
                                </div>
                            {/foreach}
                            {foreach from=$configurableoptions item=configoption}
                                <div class="row">
                                    <div class="col-sm-5 text-right">
                                        <strong>{$configoption.optionname}</strong>
                                    </div>
                                    <div class="col-sm-7 text-left">
                                        {if $configoption.optiontype eq 3}{if $configoption.selectedqty}{$LANG.yes}{else}{$LANG.no}{/if}{elseif $configoption.optiontype eq 4}{$configoption.selectedqty} x {$configoption.selectedoption}{else}{$configoption.selectedoption}{/if}
                                    </div>
                                </div>
                            {/foreach}
                            {if $moduleclientarea}
                                <div class="text-center module-client-area">
                                    {$moduleclientarea}
                                </div>
                            {/if}
                        </div>
                        {if $sslStatus}
                            <div class="tab-pane fade text-center" id="ssl-info">
                                {if $sslStatus->isActive()}
                                    <div class="alert alert-success" role="alert">
                                        {lang key='sslActive' expiry=$sslStatus->expiryDate->toClientDateFormat()}
                                    </div>
                                {else}
                                    <div class="alert alert-warning ssl-required" role="alert">
                                        {lang key='sslRequired'}
                                    </div>
                                {/if}
                            </div>
                        {/if}
                    {elseif $moduleclientarea}
                        <div class="tab-pane fade{if !$domain} in active{/if} text-center" id="manage">
                            {if $moduleclientarea}
                                <div class="text-center module-client-area">
                                    {$moduleclientarea}
                                </div>
                            {/if}
                        </div>
                    {/if}
                </div>
            {/if}
            <script src="{$BASE_PATH_JS}/bootstrap-tabdrop.js"></script>
            <script type="text/javascript">
                jQuery('.nav-tabs-overflow').tabdrop();
            </script>

        {/if}

    </div>
    <div class="tab-pane fade in" id="tabDownloads">

        <h3>{$LANG.downloadstitle}</h3>

        {include file="$template/includes/alert.tpl" type="info" msg="{lang key="clientAreaProductDownloadsAvailable"}" textcenter=true}

        <div class="row">
            {foreach from=$downloads item=download}
                <div class="col-xs-10 col-xs-offset-1">
                    <h4>{$download.title}</h4>
                    <p>
                        {$download.description}
                    </p>
                    <p>
                        <a href="{$download.link}" class="btn btn-default"><i class="fas fa-download"></i> {$LANG.downloadname}</a>
                    </p>
                </div>
            {/foreach}
        </div>

    </div>
    <div class="tab-pane fade in" id="tabAddons">

        <h3>{$LANG.clientareahostingaddons}</h3>

        {if $addonsavailable}
            {include file="$template/includes/alert.tpl" type="info" msg="{lang key="clientAreaProductAddonsAvailable"}" textcenter=true}
        {/if}

        <div class="row">
            {foreach from=$addons item=addon}
                <div class="col-xs-10 col-xs-offset-1">
                    <div class="panel panel-default panel-accent-blue">
                        <div class="panel-heading">
                            {$addon.name}
                            <div class="pull-right status-{$addon.rawstatus|strtolower}">{$addon.status}</div>
                        </div>
                        <div class="row panel-body">
                            <div class="col-md-6">
                                <p>
                                    {$addon.pricing}
                                </p>
                                <p>
                                    {$LANG.registered}: {$addon.regdate}
                                </p>
                                <p>
                                    {$LANG.clientareahostingnextduedate}: {$addon.nextduedate}
                                </p>
                            </div>
                        </div>
                        <div class="panel-footer">
                            {$addon.managementActions}
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>

    </div>
    <div class="tab-pane fade in" id="tabChangepw">

        <h3>{$LANG.serverchangepassword}</h3>

        {if $modulechangepwresult}
            {if $modulechangepwresult == "success"}
                {include file="$template/includes/alert.tpl" type="success" msg=$modulechangepasswordmessage textcenter=true}
            {elseif $modulechangepwresult == "error"}
                {include file="$template/includes/alert.tpl" type="error" msg=$modulechangepasswordmessage|strip_tags textcenter=true}
            {/if}
        {/if}

        <form class="form-horizontal using-password-strength" method="post" action="{$smarty.server.PHP_SELF}?action=productdetails#tabChangepw" role="form">
            <input type="hidden" name="id" value="{$id}" />
            <input type="hidden" name="modulechangepassword" value="true" />

            <div id="newPassword1" class="form-group has-feedback">
                <label for="inputNewPassword1" class="col-sm-5 control-label">{$LANG.newpassword}</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" id="inputNewPassword1" name="newpw" autocomplete="off" />
                    <span class="form-control-feedback glyphicon"></span>
                    {include file="$template/includes/pwstrength.tpl"}
                </div>
            </div>
            <div id="newPassword2" class="form-group has-feedback">
                <label for="inputNewPassword2" class="col-sm-5 control-label">{$LANG.confirmnewpassword}</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" id="inputNewPassword2" name="confirmpw" autocomplete="off" />
                    <span class="form-control-feedback glyphicon"></span>
                    <div id="inputNewPassword2Msg">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-6 col-sm-6">
                    <input class="btn btn-primary" type="submit" value="{$LANG.clientareasavechanges}" />
                    <input class="btn" type="reset" value="{$LANG.cancel}" />
                </div>
            </div>

        </form>

    </div>
</div>
