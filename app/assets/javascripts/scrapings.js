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


    // 求人投稿をコピー
    const jobs = $('#jobs').data('json');

    $(".c-btn__copy").click(function() {
        let job_id = $(this).attr("class").split(" ")[1];

        $(".p-job-posting__check input").prop('checked', false);
        $(".p-job-posting__wrapper input").prop('checked', false);

        for(let i of Object.keys(jobs)) {

            if (job_id === i) {
                console.log(jobs[i]);

                $("#scraping_name").val(jobs[i].name);

                $("#scraping_title").val(jobs[i].title);

                $("#scraping_section").val(jobs[i].section);

                let employee = $("#scraping_status_正社員");
                let part = $("#scraping_status_アルバイトパート");
                let contract = $("#scraping_status_契約社員");
                let subcontracting = $("#scraping_status_業務委託");
                let intern = $("#scraping_status_新卒インターン");
                let dispatch = $("#scraping_status_派遣社員");
                let introduction = $("#scraping_status_紹介予定派遣");

                if (jobs[i].status !== null) {
                    let statusArray = jobs[i].status.split(",")

                    statusArray.forEach((ele, i) => {
                        let status = ele.replace("\"", "").replace("\"", "").replace("[", "").replace("]", "").replace(" ", "");
    
                        console.log(status);
    
                        if (employee.val() === status) {
                            employee.prop('checked', true);
                        } 
    
                        else if (part.val() === status) {
                            console.log(3333);
                            part.prop('checked', true);
                        } 
    
                        else if (contract.val() === status) {
                            contract.prop('checked', true);
                        } 
    
                        else if (subcontracting.val() === status) {
                            subcontracting.prop('checked', true);
                        } 
    
                        else if (intern.val() === status) {
                            intern.prop('checked', true);
                        } 
    
                        else if (dispatch.val() === status) {
                            dispatch.prop('checked', true);
                        } 
    
                        else if (introduction.val() === status) {
                            introduction.prop('checked', true);
                        } 
                        
                    })
                    
                }
                
                
                
                
                


                $("#scraping_status").val(jobs[i].status);

                $("#scraping_content").val(jobs[i].content);

                $("#scraping_rewarding").val(jobs[i].rewarding);

                $("#scraping_target").val(jobs[i].target);

                $("#scraping_location1").val(jobs[i].location1);

                $("#scraping_location2").val(jobs[i].location2);

                $("#scraping_location3").val(jobs[i].location3);

                $("#scraping_location4").val(jobs[i].location4);

                $("#scraping_transportation").val(jobs[i].transportation);

                $("#scraping_salary").val(jobs[i].salary);

                $("#scraping_under").val(jobs[i].under);
                
                $("#scraping_up").val(jobs[i].up);

                $("#scraping_supplement").val(jobs[i].supplement);

                $("#scraping_conditions").val(jobs[i].conditions);


                if (jobs[i].application === "氏名・連絡先のみ") {
                    $("#scraping_application_氏名連絡先のみ").prop('checked', true);
                }
                else if(jobs[i].application === "基本情報") {
                    $("#scraping_application_基本情報").prop('checked', true);
                }
                else if(jobs[i].application === "基本情報 + 職務経歴") {
                    $("#scraping_application_基本情報 + 職務経歴").prop('checked', true);
                }

                $("#scraping_number").val(jobs[i].number);

                $("#scraping_selection").val(jobs[i].selection);

                break;
            }
        }

        $("#modal01").prop('checked', false);
        $('body').css('overflow','auto');

    })

    
    
    $('.modalCheck').on('change', function(){
        if($(this).is(':checked')){
            $('body').css('overflow','hidden');
        } else {
            $('body').css('overflow','auto');
        }
    });

})
