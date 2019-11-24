<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset={$charset}" />
    <title>{$companyname} - {* This code should be uncommented for EU companies using the sequential invoice numbering so that when unpaid it is shown as a proforma invoice {if $status eq "Paid"}*}{$LANG.invoicenumber}{*{else}{$LANG.proformainvoicenumber}{/if}*}{$invoicenum}</title>

    {include file="$template/includes/head.tpl"}

    <link rel="icon" href="/includes/images/favicon.ico" type="image/vnd.microsoft.icon" />
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700|Roboto:300,400,500' rel='stylesheet' type='text/css' />
    <link href="/includes/css/style.css" rel="stylesheet">

    <link href="templates/{$template}/css/invoice.css" rel="stylesheet">
    <script type="text/javascript" src="templates/{$template}/js/ajax.js"></script>

</head>

<body style="height: auto; margin: 25px;">

<div class="border"></div>
<div class="wrapper" style="background: #fff; padding: 25px; max-width: 850px;">

    {if $error}

        <div class="creditbox">{$LANG.invoiceserror}</div>

    {else}

        <img src="{$logo}" title="{$companyname}" class="left" style="padding-top:20px;" />

        <div class="left" style="margin-left: 60px;">{if $status eq "Unpaid"}
                <h2 class="unpaid">{$LANG.invoicesunpaid}</h2>
                {if $allowchangegateway}
                    <form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}" style="margin-top:10px;">{$gatewaydropdown}</form>
                {else}
                    {$paymentmethod}<br />
                {/if}
                {$paymentbutton}
            {elseif $status eq "Paid"}
                <h2 class="paid">{$LANG.invoicespaid}</h2><br />
                {$paymentmethod}<br />
                ({$datepaid})
            {elseif $status eq "Refunded"}
                <h2 class="refunded">{$LANG.invoicesrefunded}</h2>
            {elseif $status eq "Cancelled"}
                <h2 class="cancelled">{$LANG.invoicescancelled}</h2>
            {elseif $status eq "Collections"}
                <h2 class="collections">{$LANG.invoicescollections}</h2>
            {/if}
        </div>

        <div class="right" style="text-align:right;">
            <h1>{* This code should be uncommented for EU companies using the sequential invoice numbering so that when unpaid it is shown as a proforma invoice {if $status eq "Paid"}*}{$LANG.invoicenumber}{*{else}{$LANG.proformainvoicenumber}{/if}*}{$invoicenum}</h1><br />
            <strong>{$LANG.invoicesdatecreated}:</strong> {$datecreated}<br />
            <strong>{$LANG.invoicesdatedue}:</strong> {$datedue}
        </div>

        <div class="clear"></div>

    {if $smarty.get.paymentsuccess}
        <p class="box paid">{$LANG.invoicepaymentsuccessconfirmation}</p>
    {elseif $smarty.get.pendingreview}
        <p class="box paid">{$LANG.invoicepaymentpendingreview}</p>
    {elseif $smarty.get.paymentfailed}
        <p class="box unpaid">{$LANG.invoicepaymentfailedconfirmation}</p>
    {elseif $offlinepaid}
        <p class="box refunded">{$LANG.invoiceofflinepaid}</p>
    {/if}

    {if $manualapplycredit}
        <form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}">
            <input type="hidden" name="applycredit" value="true" />
            <div class="creditbox">
                {$LANG.invoiceaddcreditdesc1} {$totalcredit}. {$LANG.invoiceaddcreditdesc2}<br />
                {$LANG.invoiceaddcreditamount}: <input type="text" name="creditamount" size="10" value="{$creditamount}" /> <input type="submit" value="{$LANG.invoiceaddcreditapply}" />
            </div>
        </form>
    {/if}

        <hr />

        <table width="100%"><tr><td width="50%" style="vertical-align: top;">

                    <h5 style="margin-top: 0;">{$LANG.invoicesinvoicedto}</h5>
                    {if $clientsdetails.companyname}{$clientsdetails.companyname}<br />{/if}
                    {$clientsdetails.firstname} {$clientsdetails.lastname}<br />
                    {$clientsdetails.address1}, {$clientsdetails.address2}<br />
                    {$clientsdetails.city}, {$clientsdetails.state}, {$clientsdetails.postcode}<br />
                    {$clientsdetails.country}
                    {if $clientsdetails.customfields}
                        <br />
                        {foreach from=$clientsdetails.customfields item=customfield}
                            {if $customfield.id == 104}
                                VAT Number: {$customfield.value}
                            {/if}
                        {/foreach}
                    {/if}

                </td><td width="50%" style="vertical-align: top;">

                    <h5 style="margin-top: 0;">{$LANG.invoicespayto}</h5>
                    {$payto}

                </td></tr></table>

        <hr />

        <h5>Items</h5>

        <table class="table items">
            <tr>
                <th width="70%">{$LANG.invoicesdescription}</th>
                <th width="30%">{$LANG.invoicesamount}</th>
            </tr>
            {foreach from=$invoiceitems item=item}
                <tr>
                    <td>{$item.description}<!--{if $item.taxed eq "true"} *{/if}--></td>
                    <td>{$item.amount}</td>
                </tr>
            {/foreach}
            <tr class="title">
                <td class="text-right"><strong>{$LANG.invoicessubtotal}</strong></td>
                <td><strong>{$subtotal}</strong></td>
            </tr>
            {if $taxrate}
                <tr class="title">
                    <td class="text-right"><strong>{$taxrate}% {$taxname}</strong></td>
                    <td><strong>{$tax}</strong></td>
                </tr>
            {/if}
            {if $taxrate2}
                <tr class="title">
                    <td class="text-right"><strong>{$taxrate2}% {$taxname2}</strong></td>
                    <td><strong>{$tax2}</strong></td>
                </tr>
            {/if}
            <tr class="title">
                <td class="text-right"><strong>{$LANG.invoicescredit}</strong></td>
                <td><strong>{$credit}</strong></td>
            </tr>
            <tr class="title">
                <td class="text-right"><strong>{$LANG.invoicestotal}</strong></td>
                <td><strong>{$total}</strong></td>
            </tr>
        </table>

    {if $taxrate}
        <!--* {$LANG.invoicestaxindicator}-->
        <div id="exchange" style="margin-top: 25px; text-align:center;"><img src="templates/{$template}/img/ajax-loader.gif" alt="Loading" /></div>
        <script type="text/javascript">
            ajax('exrate.php?date={$datecreated}','exchange');
        </script>
    {/if}

        <hr />

        <h5>{$LANG.invoicestransactions}</h5>

        <table class="table items">
            <tr>
                <th width="30%">{$LANG.invoicestransdate}</th>
                <th width="25%">{$LANG.invoicestransgateway}</th>
                <th width="25%">{$LANG.invoicestransid}</th>
                <th width="20%">{$LANG.invoicestransamount}</th>
            </tr>
            {foreach from=$transactions item=transaction}
                <tr>
                    <td>{$transaction.date}</td>
                    <td>{$transaction.gateway}</td>
                    <td>{$transaction.transid}</td>
                    <td>{$transaction.amount}</td>
                </tr>
                {foreachelse}
                <tr>
                    <td colspan="4">{$LANG.invoicestransnonefound}</td>
                </tr>
            {/foreach}
            <tr class="title">
                <td class="text-right" colspan="3"><strong>{$LANG.invoicesbalance}</strong></td>
                <td><strong>{$balance}</strong></td>
            </tr>
        </table>

    {if $notes}
        <p>{$LANG.invoicesnotes}: {$notes}</p>
    {/if}

    {/if}

</div>
<div class="border"></div>

<p align="center">
    <a href="clientarea.php">{$LANG.invoicesbacktoclientarea}</a> |
    <a href="dl.php?type=i&amp;id={$invoiceid}"> {$LANG.invoicesdownload}</a> |
    <a href="javascript:window.print()">Print Invoice</a> |
    <a href="javascript:window.close()">{$LANG.closewindow}</a>
</p>

</body>
</html>