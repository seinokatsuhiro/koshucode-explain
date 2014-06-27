#!/bin/sh
#
#  概要
#    関係写像の説明を抜き出す
#
#  使用法
#    ./list-rop.sh > README.md
#

rop () {
    echo "# 関係写像演算子"
    echo
    echo "この文書は、関係写像演算子の使い方を説明しています。"
    echo "関係写像演算子に所定の属性を与えることで、ひとつの関係写像が組み立てられます。"
    echo "甲州記法は、関係写像をつなぎ合わせることで、関係を関係に変換する計算を表現します。"
    echo
    echo "| グループ | 演算子 | 属性 | 説明 |"
    echo "|----------|--------|------|------|"

    for md in */*/README.md; do
        ./list-rop.pl $md
    done
}

rop

