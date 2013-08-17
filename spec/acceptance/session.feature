# language: ja

機能: ポータル画面からログイン
  シナリオ: ログインユーザを新規登録する
    前提 サイトにアクセスする
    もし "トップ"ページを表示する
    ならば "TOP"と表示されていること
    かつ "ログイン"リンクをクリックする
    ならば "ログイン"ページを表示する
    かつ "Sign in"と表示されていること
    かつ "Sign up"リンクをクリックする
    ならば "新規登録"ページを表示する
    かつ "Sign up"と表示されていること
    かつ "Email"を入力する
    かつ "Password"を入力する
    かつ "Password confirmation"を入力する
    かつ "Sign up"ボタンをクリックする
    ならば "トップ"ページを表示する
    かつ "TOP"と表示されていること
    #かつ Welcome! You have signed up successfully.と表示されていること

