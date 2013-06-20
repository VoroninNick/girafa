// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


$(function() {
    $('#menu ul li').mouseenter(function(){
        $('#menu ul li').removeClass("m_over");
        $(this).addClass("m_over");
        //$('#menu .sub_menu div').hide();
        //$('#menu .sub_menu #sub_'+this.id).show();
    });
    $('#menu').mouseleave(function() {
        $('#menu ul li').removeClass("m_over");
        //$('#menu .sub_menu div').hide();
    });
});


FCKConfig.StylesXmlPath = '/bcms_config/fckeditor/gir_fkcstyles.xml';