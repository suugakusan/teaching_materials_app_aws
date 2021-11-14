# 教材シェア
&emsp;教材を投稿し合うアプリケーションです。ユーザーが授業で使っているプリントや参考資料などをアップロードして、投稿できます。
投稿されたデータが一覧に表示され、誰でもその教材をダウンロードすることができます。
### URL
- アプリURL：https://teaching-material-app.com/  （ゲストログインボタンを押すとサインインせず閲覧可能）
### [Qiita](https://qiita.com/suugakusan/items/0b021ccb21fc64591b97)
- 開発の経緯や工夫・苦労した点などの詳細談を[【Rails】「教材シェア」アプリを作成しました②](https://qiita.com/suugakusan/items/0b021ccb21fc64591b97)に投稿いたしました。
- 最初のQiita[【Rails】「教材シェア」アプリを作成しました](https://qiita.com/suugakusan/items/15b5b6e9b81726344342)
## アプリの特徴
* 各教科ごとに教材の検索ができ、欲しい教材を簡単に手に入れられるようにしました。
* お気に入り登録とフォロー機能があり、自分好みの投稿を保存することができます。
* コメント機能があるので、互いに教材をシェアするだけでなく、改善し合うこともできます。

# アプリ作成背景
&emsp;私が教員として働く中で、生徒と向き合う時間が十分に取れないほど、数多くの仕事で溢れていました。本来であれば、教材研究する時間を確保し、生徒に実りある学習を提供しなければいけません。
しかし、それ以外の業務に時間をかけており、教材研究が全くできないのが今の現状です。同僚も同じように、授業の準備をする時間がないことを悩んでいました。  
 &emsp;そこで、教材を共有する場を提供することができれば、教員が抱える課題の解決の一助になるのではないかと思い制作しました。

## 工夫した点
* 教科だけでなく、校種、学年、教科書まで絞って検索できるようにしました。
* 学年や教科をセレクトボックスで選ぶと、教科書も自動的に絞られるようにして、ユーザーの手間を省けるようにしました。
* 管理者画面からgroupを設定でき、同じグループだけしか表示されない実装も行った。こちらを使うと学校ごとや県ごとなどグループに応じて使用することもできます。
* お問い合わせページを作成したので、そこからグループ設定の依頼ができる

## 使用イメージ
### ゲストログイン
<img src="https://i.gyazo.com/241aa99031cf3529e6bd5398fece6648.gif" width="500">

### お気に入り機能
<img src="https://i.gyazo.com/1cf595a3f7d4228ec1ac943629cf268c.gif" width="500">

### フォロー機能
<img src="https://i.gyazo.com/74b48bfce20dbc3d12615cf9ca11725e.gif" width="500">

### 検索機能
<img src="https://i.gyazo.com/2cc157b623999d1ee744fd9c50dcd07f.gif" width="500">
<img src="https://i.gyazo.com/00472f7156847ac5e048bae314465594.gif" width="500">

### 管理者画面（グループの設定）
<img src="https://i.gyazo.com/100e2db27eb94e23173683d13039c4db.gif" width="500">
同じグループの投稿のみ表示されます。ゲストログインはすべての投稿が見れます。
<img src="https://i.gyazo.com/105ecd1dec57c0db90723cbece95ee4c.gif" width="500">


### 機能一覧
|  |機能  |gem等  |
|:---: |:---: |:---: |
|1  |ログイン・ログアウト  |×  |
|2  |アカウント登録  |×  |
|3  |教材検索 |×  |
|4  |教材投稿  |carrierwave  |
|5  |ページネーション |pagy  |
|6  |レスポンシブ  |Bootstrap  |
|7  |ゲストログイン  |×  |
|8  |記事投稿機能(CRUD)  |×  |
|9  |お気に入り機能(非同期)  |×  |
|10  |フォロー機能  |×  |
|11 |コメント機能|carrierwave  |
|12 |管理者画面 |ActiveAdmin ||
|13 |お問い合わせ|Action Mailer||
|14 |テスト実装 |RSpec / Faker / FactoryBot||
### ER図
![ER図②](https://user-images.githubusercontent.com/87798070/137575026-0da721ef-6075-4d39-8b6a-b36d615bb2be.png)
### 使用技術
* 言語 : Ruby (3.0.0)
* フレームワーク：Ruby on Rails (6.1.4.1)
* フロントエンド : HTML&CSS/Bootstrap/JavaScript/SCSS
* DB : PostgreSQL
* (旧)インフラ : Heroku(ステージング環境→本番環境)+AWS(S3)
* (現)インフラ : AWS(VPC, EC2, RDS, S3, ACM, ALB, CloudFront, IAM) + Capistrano
* ソースコード管理：GitHub(Projectsのカンバン方式でタスクを管理)
### 開発環境
* OS : windows Lenovo
* Visual Studio Code
