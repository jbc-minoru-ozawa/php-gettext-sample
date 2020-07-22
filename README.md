# php-gettext-sample

## clone

```shell
$ git clone https://github.com/jbc-minoru-ozawa/php-gettext-sample.git
```

## 試してみる

### メッセージカタログを作成する

```shell
$ make
xgettext -l php --from-code=utf-8 gettext_sample.php gettext_sample2.php
msgfmt -o locale/en_US/LC_MESSAGES/messages.mo locale/en_US/LC_MESSAGES/messages.po
msgfmt -o locale/ja_JP/LC_MESSAGES/messages.mo locale/ja_JP/LC_MESSAGES/messages.po
```

### サンプル（１）

```shell
$ echo $LANG
ja_JP.UTF-8
$ php gettext_sample.php
こんにちは世界
あけましておめでとう
```

### サンプル（2）

```shell
$ php gettext_sqmple2.php
こんにちは世界
おやすみなさい
```

### en_US にしてみる

```shell
$ export LANG=en_US.UTF-8
$ echo $LANG
en_US.UTF-8
$ php gettext_sample2.php
HELLO WORLD
Good night!
```

## メッセージを変更してみる

```shell
$ vi locale/ja_JP/LC_MESSAGES/messages.po
```

下記のように編集してみる

```shell
msgid "goodnight"
msgstr "おばんでやす"
```

メッセージカタログを作り直す

```shell
make
msgfmt -o locale/ja_JP/LC_MESSAGES/messages.mo locale/ja_JP/LC_MESSAGES/messages.po
```

サンプル（2）

```shell
$ php gettext_sqmple2.php
こんにちは世界
おばんでやす
```
