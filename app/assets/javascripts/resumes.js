//= require jquery

document.addEventListener("turbolinks:load", function() {
    let checkLength = $('.check').length;

    $(".check").each((i, ele) => {
        let parent = $(ele).parent().parent().parent().parent();
        i += 1
        let companyName = $(ele).attr("value");

        // 社名が存在すれば表示
        if (companyName) {
            parent.css("display", "table");
        }

        // 社名が存在するかつ、最後のテーブルでない
        if (companyName && i != checkLength) {
            console.log(999);
            parent.find(".c-btn__add").css("display", "none");
            parent.find(".c-btn__remove").css("display", "none");
        }

        // 社名が存在するかつ、最後から2番目かつ、最後のテーブルでない
        if (companyName && i == (checkLength - 1) && i != checkLength) {
            console.log(98888);
            parent.find(".c-btn__add").css("display", "inline-block");
            parent.find(".c-btn__remove").css("display", "inline-block");
        }

        // 社名が存在するかつ、最後のテーブルだったら　
        if (companyName && i == checkLength) {
            parent.prev().find(".c-btn__add").css("display", "none");
            parent.prev().find(".c-btn__remove").css("display", "none");
        }

    })

    // 表示されている経験企業が一つだったら、追加するボタンを表示
    companyCount = 0
    $(".p-table__company").each((i, ele) => {
        let style = $(ele).css("display")
        

        if (style == "table") {
            companyCount += 1
        }
    })
    if (companyCount == 1) {
        $(".p-table__company--first .c-btn__add").css("display", "inline-block");
    }


    // 追加するボタンを押下したとき
    $('.p-table__company .c-btn__add').click(function() {
        let parent = $(this).parent().parent().parent().parent();
        
        parent.next().css("display", "table");
        $(this).css("display", "none");
        $(this).next().css("display", "none");

        
    })

    // 削除するボタンを押下したとき
    $('.p-table__company .c-btn__remove').click(function() {
        let parent = $(this).parent().parent().parent().parent();

        // 削除したらvalueをリセット
        parent.find("input").each((i, ele) => {
            $(ele).val("");
        });
        parent.find("textarea").each((i, ele) => {
            $(ele).val("");
        });
        parent.find("select").each((i, ele) => {
            $(ele).val("");
        });
        

        parent.prev().find(".c-btn__add").css("display", "inline-block");
        parent.prev().find(".c-btn__remove").css("display", "inline-block");

        parent.css("display", "none");
        

        
    });

});

