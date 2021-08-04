//= require jquery

document.addEventListener("turbolinks:load", function() {
    $('.p-slider ul').slick({
        autoplay: true,
        autoplaySpeed: 5000,
        dots: true,
        slidesToShow: 6,
        slidesToScroll: 4,
        prevArrow: '<span class="slide-arrow prev-arrow"></span>',
        nextArrow: '<span class="slide-arrow next-arrow"></span>',
        dotsClass: 'slide-dots'
        // centerMode: true
    });


    $('.p-work-location__list li').click(function() {
        let prefectures = $(this).attr("id");

        $(`.${prefectures}`).fadeIn(2000);
        $(".c-btn__return").fadeIn(2000);
        $(".p-work-location__wrapper").fadeOut();
        $(".p-work-location__list").fadeOut();

        $('.c-btn__return').click(function() {
            $(`.${prefectures}`).fadeOut();
            $(".c-btn__return").fadeOut();
            $(".p-work-location__wrapper").fadeIn(2000);
            $(".p-work-location__list").fadeIn(2000);
        })
    })

    $('.p-work-location__wrapper dl dd').click(function() {
        let prefectures = $(this).attr("id");

        $(`.${prefectures}`).fadeIn(2000);
        $(".c-btn__return").fadeIn(2000);
        $(".p-work-location__wrapper").fadeOut();
        $(".p-work-location__list").fadeOut();

        $('.c-btn__return').click(function() {
            $(`.${prefectures}`).fadeOut();
            $(".c-btn__return").fadeOut();
            $(".p-work-location__wrapper").fadeIn(2000);
            $(".p-work-location__list").fadeIn(2000);
        })
    })
})
