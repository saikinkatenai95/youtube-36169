<br>

![logo1](https://user-images.githubusercontent.com/87253195/150742958-80e2497b-22fe-4be5-83cf-9921035229df.png)

# 概要
  "FilTube"は、YouTubeDataAPI v3を使用した、ストリーミングサービスです。<br>
  FIlTubeの特徴は、**関連動画を一切見せない**ことにより、<br>
  ユーザーに**見たい動画をいち早く見つけてもらいたい**思いで開発しました。<br>
  また差別化として、Youtubeには便利な検索機能があります。<br>
  その**検索機能をユーザーに簡単に使用できるようにUIも考えました。**<br>
<br>

※**このアプリケーションは開発途中になります。**

## 本番環境
  URL:https://youtube-36169.herokuapp.com/
<br>
  ID:admin, PASS:2222
<br><br>

# 制作背景
  このサービスは友人の「不」から生まれました。<br>
  **抱えていた問題点**
  1. 関連動画による誘惑
  1. 調べ物をより詳細にしたい<br>
  上記二つの点から、このサービスを開発いたしました。<br>
  Youtubeの設計上、**関連動画は避けて通れないものになっております。**<br>
  **そのため目的以外の動画を開いてしまい、時間を取られるという傾向にありました。**<br>
  そこで、**今回無駄な動画を全て"Filter"することで、見たい動画に辿り着かせる**サービスを開発しました。<br>
  また、**差別化のポイントとして検索機能をユーザーが簡単に使えるようにして、より正確な検索をできるように設計**しました。<br><br>

# DEMO


# top page
  トップページはUIを意識してシンプルに仕上げました。<br><br>
  ![home1](https://user-images.githubusercontent.com/87253195/150743345-02c21728-d6bc-42e7-a192-9523e5be0b70.png)<br><br>

# 通常検索機能 紹介
  通常検索はgoogleと同様に検索バーにキーワードを入力することで<br>
  Youtube動画が検索ができるようになっています。<br><br>
  ![home2](https://user-images.githubusercontent.com/87253195/150743448-5e4548d2-4b2c-4c86-aecd-6e72a125ff5b.png)<br><br>

# 検索結果
  "米津玄師"と入力し、youtubeの"米津玄師"に関する動画が一覧で表示することができます。<br><br>
  ![search1](https://user-images.githubusercontent.com/87253195/150743568-28f7d4ed-4a81-4e57-aa68-58794994f7bc.png)<br><br>

# サイト内での操作
  サイト内で動画をそのまま視聴可能、YouTubeページに飛ぶことも可能にしています。<br>
  **サイト内で閲覧できることで、ユーザーがページを切り替える手間が減ります。**<br><br>
  ![demo1](https://user-images.githubusercontent.com/87253195/150743549-748a8804-0932-458c-83a5-d0cc7480d3c4.png)<br><br>


# より高度な検索
  +ボタンを押すことで選択肢が増え、**より高度な検索ができるようになります。**<br><br>

  ![home3](https://user-images.githubusercontent.com/87253195/150743495-d39fa43f-4447-47b8-be7b-92dae645d1d1.png)<br><br>

### 増える検索項目
  1. 第二キーワード
  1. Filter機能(activeHashで設置)
      1. 2つのキーワードを**含めて**検索
      1. 2つ目のキーワードを**除外して**検索
      1. 2つのキーワード**いずれかを**検索
      1. 2つのキーワードが**タイトルに含まれているもの限定で**検索
  1. 表示件数
      1. 24件
      1. 48件
  <br><br>



# 検索結果
  今回は"米津玄師"でも"Lemon"を含めない検索をしました。<br>
  結果全く異なる検索結果が出てきました。<br>
  他にも"タイトル完全一致検索"や"or検索"など便利な検索機能を簡単に使用することが可能になります。<br><br>

  ![search2](https://user-images.githubusercontent.com/87253195/150743577-08782e0f-4ff7-499c-8064-8d4c8b572a7f.png)<br><br><br><br>

# 追加検索機能
  検索後でも目的の動画が見つからなかった場合、<br>
  写真の右上の検索フォームより高度な検索ができるようになります。<br><br>

  <img width="836" alt="スクリーンショット 2022-02-21 18 07 54" src="https://user-images.githubusercontent.com/87253195/154923354-2a77bed2-81cd-4318-aa5f-fbc634e624e7.png">

<br><br>

# 検索結果
 グルメでもハンバーグにフォーカスを当て検索を実施した結果<br>
 ハンバーグがタイトルや概要欄に含まれている動画のみHITするようになりました。<br>

 <img width="1430" alt="スクリーンショット 2022-02-21 18 08 31" src="https://user-images.githubusercontent.com/87253195/154923366-835d7ffd-ea91-4723-b88f-fc95998fa2c5.png">

<br><br>


# Requirement
  Ruby 2.6.5<br>
  Ruby on Rails 6.0.0<br>
  Youtube data v3 API<br>
  MYSQL 5.7<br><br>
  JavaScript<br>


# Author
  **DaisukeSato / 佐藤 大輔**