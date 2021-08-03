//= require jquery
$(function() {
    $('.p-work-location__list li').click(function() {
        let prefectures = $(this).attr("id");

        $(`.${prefectures}`).fadeIn();
        $(".c-btn__return").fadeIn();
        $(".p-work-location__wrapper").fadeOut();
        $(".p-work-location__list").fadeOut();

        $('.c-btn__return').click(function() {
            $(`.${prefectures}`).fadeOut();
            $(".c-btn__return").fadeOut();
            $(".p-work-location__wrapper").fadeIn();
            $(".p-work-location__list").fadeIn();
        })
    })

    $('.p-work-location__wrapper dl dd').click(function() {
        let prefectures = $(this).attr("id");

        $(`.${prefectures}`).fadeIn();
        $(".c-btn__return").fadeIn();
        $(".p-work-location__wrapper").fadeOut();
        $(".p-work-location__list").fadeOut();

        $('.c-btn__return').click(function() {
            $(`.${prefectures}`).fadeOut();
            $(".c-btn__return").fadeOut();
            $(".p-work-location__wrapper").fadeIn();
            $(".p-work-location__list").fadeIn();
        })
    })

});
