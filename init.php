<?php

// 言語設定を取得
$lang = getenv('LANG');

// ロケールをセット
setlocale(LC_ALL, $lang);

// 翻訳ファイルの設定
$domain = 'messages';
$directory = dirname(__FILE__) . '/locale/';
bindtextdomain($domain, $directory);
textdomain($domain);
