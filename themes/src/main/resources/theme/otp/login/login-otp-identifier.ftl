<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=true; section>
<!-- template: login-otp-identifier.ftl -->

    <#if section="header">
        ${msg("otpIdentifierTitle")}
    <#elseif section="form">
        <form id="kc-otp-identifier-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post" novalidate="novalidate">
            <div class="${properties.kcFormGroupClass!}">
                <label for="identifier" class="${properties.kcLabelClass!}">${msg("otpIdentifierLabel")}</label>
                <input tabindex="1"
                       id="identifier"
                       name="identifier"
                       type="text"
                       class="${properties.kcInputClass!}"
                       autofocus
                       autocomplete="username"
                       value="${(identifier!'')}"
                       placeholder="${msg('otpIdentifierPlaceholder')}"/>
            </div>
            <div class="${properties.kcFormGroupClass!}">
                <input tabindex="2"
                       class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                       name="submit"
                       id="kc-submit"
                       type="submit"
                       value="${msg('otpIdentifierContinue')}"/>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
