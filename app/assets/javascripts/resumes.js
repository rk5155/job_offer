//= require jquery

document.addEventListener("turbolinks:load", function() {

    function check(selecter) {
        let checkLength = $(`${selecter}`).length;
        

        $(`${selecter}`).each((i, ele) => {
            let parent = $(ele).parent().parent().parent().parent();
            i += 1
            let being = $(ele).attr("value");

            // beingが存在すれば表示
            if (being) {
                parent.css("display", "table");
            }

            // beingが存在するかつ、最後のテーブルでない
            if (being && i != checkLength) {
                parent.find(".c-btn__add").css("display", "none");
                parent.find(".c-btn__remove").css("display", "none");
            }

            // beingが存在するかつ、一つ目以外かつ、最後のテーブルでない
            if (being && i != 1 && i != checkLength) {
                parent.find(".c-btn__add").css("display", "inline-block");
                parent.find(".c-btn__remove").css("display", "inline-block");
            }

            // beingが存在するかつ、最後のテーブルだったら　
            if (being && i == checkLength) {
                parent.prev().find(".c-btn__add").css("display", "none");
                parent.prev().find(".c-btn__remove").css("display", "none");
            }

        })
    }
    check(".check-company")
    check(".check-qualification")
    

    function tableOne(selecter) {
        // 表示されているtableが一つだったら、追加するボタンを表示
        count = 0
        $(`${selecter}`).each((i, ele) => {
            let style = $(ele).css("display")
            

            if (style == "table") {
                count += 1
            }
        })
        if (count == 1) {
            $(`${selecter}--first .c-btn__add`).css("display", "inline-block");
        }
            
    }
    tableOne(".p-table__company")
    tableOne(".p-table__qualification")
    


    function btnAdd(selecter) {
        // 追加するボタンを押下したとき
        $(`${selecter} .c-btn__add`).click(function() {
            let parent = $(this).parent().parent().parent().parent();
            
            parent.next().css("display", "table");
            $(this).css("display", "none");
            $(this).next().css("display", "none");

            
        })
    }
    

    function btnRemove(selecter) {
        // 削除するボタンを押下したとき
        $(`${selecter} .c-btn__remove`).click(function() {
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
    }
    

    btnAdd(".p-table");
    btnRemove(".p-table");
    

});

