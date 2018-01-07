``composer.json``
=================

``composer.json`` は、 PHP のパッケージの依存関係管理ツールである `Composer <https://getcomposer.org/>`_ のためのパッケージ設定を格納するための設定ファイルです。

``composer.json`` があるディレクトリで次のコマンドを実行すると、依存先として指定されているパッケージがインストールされ、 :doc:`composer.lock` ファイルが自動で作成されます。

.. code-block:: bash

    $ composer install
