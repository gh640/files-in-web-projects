This is a Japanese repository.

# コントリビューションガイドライン

このリポジトリへの項目の追加や変更に興味がある奇特な方と未来の自分のために、ドキュメントの更新方法を説明します。

## 使用ツール

このドキュメントのビルドには以下のソフトウェア / ライブラリを使用しています。

- Python 3.6.x
- [Sphinx](http://www.sphinx-doc.org) 1.6.x
- [Alabaster](https://alabaster.readthedocs.io) 0.7.x

この環境のセットアップには以下の Python ライブラリを使用しています。

- [Pipenv](https://docs.pipenv.org) 8.3.x

ウェブ上での公開には [GitHub Pages](https://pages.github.com) を使用しています。

## ドキュメントの追加・変更方法

ドキュメントの追加・変更のおおよその流れは次のとおりです。

1. ビルド環境を用意する
2. ファイルを編集する
3. ビルドする
4. コミットしてプッシュする

### 1. ビルド環境を用意する

Python3 がインストールされていない場合はあらかじめインストールしておきます。

Python3 が用意できたら、 Pipenv をインストールします。

```bash
$ pip install pipenv
```

Pipenv がインストールできたら、 `pipenv` コマンドを使って Sphinx が含まれる virtual environment を作成します。

```bash
$ git clone https://github.com/gh640/files-in-web-projects
$ cd files-in-web-projects
$ pipenv install
```

無事 virtual environment が作成されたら `pipenv shell` で virtual environment を activate しておきます。

```bash
$ pipenv shell
```

virtual environment を activate しておくことで、以降のステップ 3 で `make github` コマンドが使用できます。
virtual environment から脱出したい場合は、 `exit` コマンドを打つと元の環境に戻ることができます。

### 2. ファイルを編集する

対象のファイルを編集します。
ファイル構造はおおよそ次のとおりになっているので、ドキュメントを変更する場合は主に `source/detail` 以下のファイルと `source/index.rst` を変更することになります。

```text
- source/  Sphinx のソースファイル一式。
  - _static/  メディアファイル等のためのディレクトリ。使用していません。
  - _templates/  テンプレートファイルのためのディレクトリ。使用していません。
  - detail/  ドキュメントの各種詳細ページのソースファイルのディレクトリ。
  - locales/  サイドバーの翻訳文言を格納した .po ファイルのためのディレクトリ。 Alabaster テンプレートの未翻訳部分を翻訳するために使用しています。
  - conf.py  Sphinx の設定ファイル。
  - index.rst  index.html ページのためのソースファイル。
- build/  ビルドで生成されるファイル一式。生成された HTML は一時的にこの中に入ります。
- docs/  ビルドで生成された HTML ファイル一式。
```

### 3. ビルドする

ファイルの変更が完了したら、ビルド処理を実行して html を更新します。

```bash
$ make github
```

`make github` の具体的な処理内容は `Makefile` に記述されています。

`make github` の処理がうまく行けば `docs` ディレクトリの中身が更新されています。
`docs/index.html` をブラウザで開いて確認してください。

### 4. コミットしてプッシュする

ビルド処理を行って html が無事に更新されていることを確認したら、その変更内容をコミットしてプッシュします。

```bash
$ git add [対象ファイル]
$ git commit -m '[メッセージ]'
```

以上で更新は完了です。
