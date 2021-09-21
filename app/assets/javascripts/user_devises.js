
$(function() {
    let tabs = $(".p-users__tab"); // tabのクラスを全て取得し、変数tabsに配列で定義

    $(".p-users__tab").on("click", function() { // tabをクリックしたらイベント発火
      $(".p-users__tab--active").removeClass("p-users__tab--active"); // activeクラスを消す
      $(this).addClass("p-users__tab--active"); // クリックした箇所にactiveクラスを追加
      const index = tabs.index(this); // クリックした箇所がタブの何番目か判定し、定数indexとして定義
      $(".p-users__content").removeClass("p-users__content--show").eq(index).addClass("p-users__content--show"); // showクラスを消して、contentクラスのindex番目にshowクラスを追加
    })
})