# php-gettext-sample

## clone

```
$ git clone https://github.com/jbc-minoru-ozawa/php-gettext-sample.git
```

## 試してみる

### メッセージカタログを作成する

```
$ make
xgettext -l php --from-code=utf-8 gettext_sample.php gettext_sample2.php
msgfmt -o locale/en_US/LC_MESSAGES/messages.mo locale/en_US/LC_MESSAGES/messages.po
msgfmt -o locale/ja_JP/LC_MESSAGES/messages.mo locale/ja_JP/LC_MESSAGES/messages.po
```

### サンプル（１）

```
$ echo $LANG
ja_JP.UTF-8
$ php gettext_sample.php
こんにちは世界
あけましておめでとう
```

### サンプル（2）

```
$ php gettext_sqmple2.php
こんにちは世界
おやすみなさい
```

## メッセージを変更してみる

```
$ vi locale/ja_JP/LC_MESSAGES/messages.po
```

下記のように編集してみる

```
msgid "goodnight"
msgstr "おばんでやす"
```

メッセージカタログを作り直す

```
make
msgfmt -o locale/ja_JP/LC_MESSAGES/messages.mo locale/ja_JP/LC_MESSAGES/messages.po
```

サンプル（2）

```
$ php gettext_sqmple2.php
こんにちは世界
おばんでやす
```
