$(document).ready(function() {
    $.validator.addMethod("isName", function(value, element) {
        return this.optional(element) || /^[^0-9!<>,;?=+()@#"°{}_$%:]+$/.test(value);
    }, "Digite un nombre v\u00E1lido");
    $.validator.addMethod("rut", function(value, element) {
        return this.optional(element) || $.Rut.validar(value);
    }, "Rut inv\u00E1lido.");


	$('#SubmitCreate').on('click', function() {
        $("#create-account_form").validate({
            rules: {
                email_create: {
                    required: true,
                    email: true
                }
            },
            messages: {
                email_create: {
                    required: "Campo obligatorio",
                    email:    "E-mail inv\u00E1lido"
                }
            },    
            submitHandler: function(form) {
                form.submit();   
            }
        });
    });
    
    $('#submitAccount').on('click', function() {
        if (!$("#uniform-terms span:first").hasClass("checked")) {
            if ($(".error-terms").length > 0) $(".error-terms").remove();          
            $("#uniform-terms").parent().after('<span class="error error-terms" style="display:block;">Acepte los términos y condiciones</span>');
            $("#terms").parent().css("border", "1px solid #ea5450");
        } else {
            if ($(".error-terms").length > 0) $(".error-terms").remove();
            $("#terms").parent().css("border", "none");
        }
        $("#account-creation_form").validate({
            rules: {
                customer_firstname: {
                    required: true,
                    isName: true
                },
                customer_lastname: {
                    required: true,
                    isName: true
                },
                rut: {
                    required: true,
                    rut: true
                },
                email: {
                    required: true,
                    email: true
                },
                passwd: {
                    required: true,
                    minlength: 5,
                    maxlength: 254
                },
                conf_passwd: {
                    required: true,
                    equalTo: "#passwd"
                },
                reg_phone: {
                    required: true,
                    digits: true
                }
            },
            messages: {
                customer_firstname: {
                    required: "Campo obligatorio",
                    isName:   "Nombre inv\u00E1lido"
                },
                customer_lastname: {
                    required: "Campo obligatorio",
                    isName:   "Apellido inv\u00E1lido"
                },
                rut: {
                    required: "Campo obligatorio",
                    rut: "Rut invv\u00E1lido"
                },
                email: {
                    required: "Campo obligatorio",
                    email:    "E-mail invv\u00E1lido"
                },
                passwd: {
                    required: "Campo obligatorio",
                    minlength: "M\u00EDnimo 5 caracteres",
                    maxlength: "M\u00E1ximo 254 caracteres"
                },
                conf_passwd: {
                    required: "Campo obligatorio",
                    equalTo: "No coinciden las contrase\u00F1as"
                },
                reg_phone: {
                    required: "Campo obligatorio",
                    digits: "Digite s\u00F3lo d\u00EDgitos"
                }
            },    
            submitHandler: function(form) {
                if (!$("#uniform-terms span:first").hasClass("checked")) {
                    if ($(".error-terms").length > 0) $(".error-terms").remove();
                    $("#uniform-terms").parent().after('<span class="error error-terms" style="display:block;">Acepte los términos y condiciones</span>');
                    $("#terms").parent().css("border", "1px solid #ea5450");
                } else {
                    if ($(".error-terms").length > 0) $(".error-terms").remove();
                    $("#terms").parent().css("border", "none");
                    form.submit();
                }                
            }
        });
    });
    
    $("#uniform-terms span:first").on("click", function() {
        if (!$("#uniform-terms span:first").hasClass("checked")) {
            if ($(".error-terms").length > 0) $(".error-terms").remove();
            $("#uniform-terms").parent().after('<span class="error error-terms" style="display:block;">Acepte los términos y condiciones</span>');
            $("#terms").parent().css("border", "1px solid #ea5450");
        } else {
            if ($(".error-terms").length > 0) $(".error-terms").remove();
            $("#terms").parent().css("border", "none");
        }
    });    
});