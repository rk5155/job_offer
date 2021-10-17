
document.addEventListener("turbolinks:load", function() {
    let tabs = $(".p-users__tab"); // tabのクラスを全て取得し、変数tabsに配列で定義

    $(".p-users__tab").on("click", function() { // tabをクリックしたらイベント発火
      $(".p-users__tab--active").removeClass("p-users__tab--active"); // activeクラスを消す
      $(this).addClass("p-users__tab--active"); // クリックした箇所にactiveクラスを追加
      const index = tabs.index(this); // クリックした箇所がタブの何番目か判定し、定数indexとして定義
      $(".p-users__content").removeClass("p-users__content--show").eq(index).addClass("p-users__content--show"); // showクラスを消して、contentクラスのindex番目にshowクラスを追加

      var url = new URL(window.location.href);
      // アドレスバーのURLからGETパラメータを削除
      history.replaceState('', '', url.pathname);
    })
})


document.addEventListener("turbolinks:load", function() {
  let params = decodeURIComponent(location.search)
  let tabText = params.split("=")[1]

  if (params) {
    $(".p-users__content:nth-child(1)").removeClass("p-users__content--show")
    $(".p-users__tab:nth-child(1)").removeClass("p-users__tab--active")
  }

  if (params == "?name=プロフィール変更" || params == "?name=アカウント情報変更") {
    $(".p-users__tab:nth-child(2)").removeClass("p-users__tab--active")
    $(".p-users__tab:nth-child(1)").addClass("p-users__tab--active")
  }

  $(".p-users__tab").each((i, ele) => {
    if (tabText === $(ele).text()) {
      $(ele).addClass("p-users__tab--active");
    }
  })

  $(".p-users__content h2").each((i, ele) => {
    let showTitle = $(ele).text();
    console.log(showTitle);

    if (tabText === "会員情報") {
      $(".p-users__content:nth-child(1)").addClass("p-users__content--show");
    }
    else if (tabText === showTitle) {
      $(ele).parent().addClass("p-users__content--show");
    }
  })


  
})