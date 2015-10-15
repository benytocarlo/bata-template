{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{capture name=path}{l s='Contáctanos'}{/capture}
<h1 class="page-heading bottom-indent">{l s='Contáctanos'}</h1>
<div class="wht_bg">
    <div class="wrap_indent">    
        {include file="$tpl_dir./errors.tpl"}        
        <form id="form-validate" action="https://www.salesforce.com/servlet/servlet.WebToCase?encoding=UTF-8" method="post" class="contact-form-box">        
            <input type=hidden name="orgid" value="00DG0000000kzQM">
            <input type=hidden name="retURL" value="{$link->getPageLink('contact')|escape:'html':'UTF-8'}?confirmacion=true">
            <fieldset>
                <h3 class="page-subheading">{l s='Send a message'}</h3>
                <div class="clearfix">
                    <div class="col-xs-12 col-md-6">
                        <div class="form-group">
                            <label for="name">{l s='Nombre del contacto'}<sup> *</sup></label>                            
                            <input class="form-control grey" id="name" maxlength="80" name="name" type="text">                            
                        </div>
                        <div class="form-group required">
                            <label for="email">{l s='Correo electrónico'}<sup> *</sup></label>                            
                            <input class="form-control grey" id="email" maxlength="80" name="email" data-validate="isEmail" type="text">                            
                        </div>
                        <div class="form-group required">
                            <label for="phone">{l s='Teléfono'}<sup> *</sup></label>
                            <input class="form-control grey" id="phone" maxlength="40" name="phone" type="text">
                        </div>
                        <div class="form-group required">
                            <label for="00NG000000Duv1H">{l s='Tipo de consulta'}<sup> *</sup></label>                            
                            <select id="00NG000000Duv1H" name="00NG000000Duv1H" title="Clasificación de consulta" class="form-control">
                                <option value="">--Elija una opción--</option>
                                <option value="Asistencia Web">Asistencia Web</option>
                                <option value="Compra Web">Compra Web</option>
                                <option value="Felicitaciones">Felicitaciones</option>
                                <option value="Información General">Información General</option>
                                <option value="Reclamo Queja Tienda">Reclamo Queja Tienda</option>
                                <option value="Reclamo Queja BataClub">Reclamo Queja BataClub</option>
                                <option value="Ventas por Mayor y Otros">Ventas por Mayor y Otros</option>
                            </select>
                        </div>                    
                        <div class="form-group required">
                            <label for="subject">{l s='Asunto'}<sup> *</sup></label>
                            <input class="form-control grey" id="subject" maxlength="80" name="subject" type="text">                            
                        </div>
                        <div class="form-group required">
                            <label for="description">{l s='Descripción'}<sup> *</sup></label>
                            <textarea class="form-control" id="description" name="description"></textarea>
                        </div>
                        <div class="form-group">
                            <div class="submit">
                                <button id="submitMessage" type="submit" title="Enviar" name="submitMessage" class="button large_button validation-passed">
                                    <span>{l s='ENVIAR'}</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>                
            </fieldset>
        </form>    
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('#submitMessage').on('click', function() {
            $("#form-validate").validate({
                rules: {
                    name: {
                        required: true,					
                        maxlength: 80					
                    },
                    email: {
                        required: true,
                        email: true,
                        maxlength: 80
                    },				
                    phone: {
                        required: true,
                        maxlength: 40
                    },
                    subject: {
                        required: true,
                        maxlength: 80
                    },
                    description: {
                        required: true
                    }
                },
                messages: {
                    name: {
                        required:  "Campo obligatorio",					
                        maxlength: "Digite máximo 80 caracteres"
                    },
                    email: {
                        required: "Campo obligatorio",
                        email:    "E-mail inválido",
                        maxlength: "Digite máximo 80 caracteres"
                    },
                    phone: {
                        required:  "Campo obligatorio",					
                        maxlength: "Digite máximo 40 caracteres"
                    },
                    subject: {
                        required:  "Campo obligatorio",					
                        maxlength: "Digite máximo 80 caracteres"
                    },
                    description: {
                        required:  "Campo obligatorio",					
                        maxlength: "Digite máximo 80 caracteres"
                    }
                },    
                submitHandler: function(form) {
                    if ($('#00NG000000Duv1H').val() == '') {
                        if ($('#label_00NG000000Duv1H').length > 0)
                            $('#label_00NG000000Duv1H').remove();
                        $('#00NG000000Duv1H').after('<label id="label_00NG000000Duv1H" for="00NG000000Duv1H" generated="true" class="error">Campo obligatorio</label>');
                        $('#00NG000000Duv1H').addClass('error');
                        return false;
                    } else {
                        $('#00NG000000Duv1H').removeClass('error');
                        $('#label_00NG000000Duv1H').remove();
                        form.submit();
                    }                    
                }
            });
        });       
	});
</script>