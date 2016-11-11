class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable => # アカウントの有効化させるためのメールを送信し、サインイン(ユーザ登録)時にアカウントが有効化されているか検証する。
  #                 # ユーザに確認メールを送信、そのメール内のリンクをクリックしないとアカウントが有効化されない(ログインできない)、というサインインプロセスにできる。
  #                 # これが無い場合は、サインインを行ったらすぐにログインができる。
  # :lockable => # 指定した回数サインインに失敗した場合にアカウントをロック。指定した時刻を経過するか、メールによってアンロックができる。
  # :omniauthable => # Omniauthサポートを追加する。TwitterアカウントやFacebookアカウントなどでユーザ登録したい場合は追加。
  # :recoverable => # パスワードを忘れたときのための、パスワードのリセット機能。
  # :registerable => # サインアップ処理によるユーザ登録を行う。アカウントの編集や削除も含まれる。(基本的には必須。)

  devise :database_authenticatable, # サインイン中のユーザーの認証を検証するために、パスワードの暗号とDBへの保存。(基本的には必須。)
         :rememberable,             # cookieに保存されたトークンの生成と削除。
         :trackable,                # サインインの回数や時刻、IPアドレスをDBのカラムに保存。
         :validatable,              # メールアドレスとパスワードの基本的な検証。
         :timeoutable               # 指定した一定時間内に操作がなければセッション情報を削除。
end
