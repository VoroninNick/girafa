$(document).ready(function() {
    
    if ($.cookie('e_mails') == 1) {
        $(".email-page-portlet").hide();
        $('.email-page-portlet').before('
            <div class="succses">
                <h2>Дякуємо!</h2>
                <p>Ваше повідомлення було успішно відправленно.</p>
            </div>
        ');
    };
    

 
    $('#btn-submit').click(function() {  
 
        $(".error").hide();
        var hasError = false;
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        var phoneReg = /[0-9 () *]{9}/;
 
        var emailaddressVal = $("#UserEmail").val();
        var nameVal = $("#UserName").val();
        var phoneaVal = $("#UserPhone").val();
        var msgVal = $("#UserMsg").val();

        if (nameVal == '' && emailaddressVal == '' && phoneaVal == '' && msgVal == ''){
            $("#UserName").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Ваше імя! </span>');
            $("#UserEmail").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Вашу поштову скриньку!</span>');
            //$("#UserPhone").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Ваш телефон!</span>');
            $("#UserMsg").after('<span class="error" style="font-size: 10px;float: left;color: red;">Введіть будь-ласка Ваше повідомлення!</span>');
            hasError = true;

        }else if(nameVal == '') {
            $("#UserName").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Ваше імя! </span>');
            $("#UserEmail").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Вашу поштову скриньку!</span>');
            //$("#UserPhone").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Ваш телефон!</span>');
            $("#UserMsg").after('<span class="error" style="font-size: 10px;float: left;color: red;">Введіть будь-ласка Ваше повідомлення!</span>');
            hasError = true;

        }else if(emailaddressVal == '') {
            $("#UserEmail").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Вашу поштову скриньку!</span>');
            //$("#UserPhone").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Ваш телефон!</span>');
            $("#UserMsg").after('<span class="error" style="font-size: 10px;float: left;color: red;">Введіть будь-ласка Ваше повідомлення!</span>');
            hasError = true;

        }else if(!emailReg.test(emailaddressVal)) {
            $("#UserEmail").after('<span class="error" style="font-size: 10px;float: right;color: red;">Перевірте будь-ласка поштову скриньку!</span>');
            //$("#UserPhone").after('<span class="error" style="font-size: 10px;float: right;color: red;">Введіть будь-ласка Ваш телефон!</span>');
            $("#UserMsg").after('<span class="error" style="font-size: 10px;float: left;color: red;">Введіть будь-ласка Ваше повідомлення!</span>');
            hasError = true;

        }else if(msgVal == '') {
            $("#UserMsg").after('<span class="error" style="font-size: 10px;float: left;color: red;">Введіть будь-ласка Ваше повідомлення!</span>');
            hasError = true;
        }else{
            //hasError = false;
        }


        if(hasError == true) { 
            return false; 
        }else{
            var date = new Date();
            date.setTime(date.getTime() + (1 * 60 * 1000));
            var expiry = {seconds:28};
            $.cookie( 'e_mails', '1', { expires: expiry } );
            $(".email-page-portlet").hide();

        }
 
    });
});