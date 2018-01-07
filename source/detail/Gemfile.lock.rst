``Gemfile.lock``
================

``Gemfile.lock`` は、 Ruby のライブラリ（「 gem 」）管理ツールである `Bundler <http://bundler.io/>`_ でインストールされたライブラリの情報を記述したファイルです。

:doc:`Gemfile` を使って次のコマンドで gem をインストールしたときに自動で作成されます。

.. code-block:: bash

    $ bundle install

すでに ``Gemfile.lock`` ファイルが存在する場合は、 Bundler は :doc:`Gemfile` の前に ``Gemfile.lock`` の中身を確認して gem をインストールします。

``Gemfile.lock`` は異なる環境で厳密に同じバージョンのライブラリを利用したい場合に有用です。
