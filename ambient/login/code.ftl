<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
    <#if section = "header">
        ${msg("loginAccountTitle")}
    <#elseif section = "form">
        <div id="kc-form">
          <div id="kc-form-wrapper">
            <#if realm.password>
                <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <div>
                        <span>
                            ${msg("api",web)?no_esc}
                        </span>
                    </div>

                    <div>
                        <span>
                            ${msg("help",number1,number2)?no_esc}
                        </span>
                    </div>
                   <label for="sum" class="${properties.kcLabelClass!}">${msg("sum")}</label>

                   <input tabindex="1" id="sum" class="${properties.kcInputClass!}" name="sum" type="text" autofocus autocomplete="off"/>

                      <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                          <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                          <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                      </div>
                </form>
            </#if>
            </div>

        </div>
    </#if>

</@layout.registrationLayout>
