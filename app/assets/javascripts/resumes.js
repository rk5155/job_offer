//= require jquery

document.addEventListener("turbolinks:load", function() {

    let companyNum = $(".p-table__company").length
    console.log(companyNum);

    
    
    if (companyNum > 1) {
        $(".p-table__company--first").find(".c-btn__add").css("display", "none")
    }

    $('.p-table__company .c-btn__add').click(function() {
        
        let copyCompany = $(this).parent().parent().parent().parent().clone(true);
        let numberText = copyCompany.find(".p-table--white").text();
        // 追加ボタンを押下したときの .p-table__company を変数に代入
        let oya = $(this).parent().parent().parent().parent()
    

        copyCompany.find(".c-btn__add").after(`<span class="c-btn--blue c-btn__remove u-block__inline">削除する</span>`)

        copyCompany.find(".c-btn__remove").each((i, ele) => {
            if (i > 0) {
                $(ele).remove();
            }
        })

        $(this).next().css("display", "none")
        copyCompany.find(".c-btn__add").css("display", "inline-block")

        // name属性とidを書き換える
        function nameIdChange(ele, from, to) {
            let name = $(ele).attr('name');
            let id = $(ele).attr('id');

            if ( name.indexOf(from) != -1) {
                
                name = name.replace(from, to)
                id = id.replace(from, to)

                $(ele).attr('name', name)
                $(ele).attr('id', id)
            }
            // $(ele).attr("value", "");
            
        };


        if (numberText === "経験企業（１）") {
            copyCompany.find(".p-table--white").text("経験企業（２）");
            
            copyCompany.find("input").each((i, ele) => {
                nameIdChange(ele, "1", "2")
            });

            copyCompany.find("select").each((i, ele) => {
                nameIdChange(ele, "1", "2")
            });

            copyCompany.find("textarea").each((i, ele) => {
                nameIdChange(ele, "1", "2")
            });

            $(this).parent().parent().parent().parent().after(copyCompany)

        } else if (numberText === "経験企業（２）") {
            copyCompany.find(".p-table--white").text("経験企業（３）");
            
            copyCompany.find("input").each((i, ele) => {
                nameIdChange(ele, "2", "3")
            });

            copyCompany.find("select").each((i, ele) => {
                nameIdChange(ele, "2", "3")
            });

            copyCompany.find("textarea").each((i, ele) => {
                nameIdChange(ele, "2", "3")
            });

            copyCompany.find(".c-btn__add").remove()

            $(this).parent().parent().parent().parent().after(copyCompany)
        }




        // $(".c-btn__add").css("display", "inline-block")
        $(this).css("display", "none")

        



        // 追加するをクリックした後に、削除するを押した時
        $('.p-table__company .c-btn__remove').click(function() {
            $(this).parent().parent().parent().parent().remove();
            oya.find(".c-btn__add").css("display", "inline-block");
            $(".c-btn__remove").css("display", "inline-block")

        })
        

        
    })


    // 追加するをクリックする前に、削除するを押した時
    $('.p-table__company .c-btn__remove').click(function() {
        $(this).parent().parent().parent().parent().find("input").each((i, ele) => {
            $(ele).val("");
        });

        $(this).parent().parent().parent().parent().find("textarea").each((i, ele) => {
            $(ele).val("");
        });

        $(this).parent().parent().parent().parent().css("display", "none")

        let companyNum = $('.p-table__company').length;
        console.log(companyNum);

        if (companyNum === 2) {
            $(".c-btn__add").css("display", "inline-block")
        }

    })

    

    
})

