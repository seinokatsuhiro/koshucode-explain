
概要
------------------------------------------------------------------

* `cut /P ...` — 項目の除去

説明
------------------------------------------------------------------

`cut /P ...` は関係から指定された項目 `/P ...` を除去します。
入力関係は `/P ...` をもっていなければなりません。
`cut` とだけ書かれたときは、どの項目も除去されないので、
入力関係そのものが出力されます。

`cut` は関係の射影を実施する演算子のひとつです。
除り除く項目ではなく、残す項目に着目するときは `pick` を使ってください。
項目名を直接指定する代わりに、ほかの関係写像の項目にもとづいて
除去したいときは、`cut-term` を使ってください。

属性
------------------------------------------------------------------

属性標識のない `cut /P ...` は、標識を指定して、
`cut -term /P ...` とも書けます。

| 属性     | 説明 |
|----------|------|
| -term    | 引数の並びは項目名に分類されます。 |

使用例
------------------------------------------------------------------

* ディレクトリ [basic](basic) には、基本的な使用例があります。

* ディレクトリ [detail](detail) には、細部を例示する使用例があります。

* ディレクトリ [abort](abort) には、エラーとなる使用例があります。

* ディレクトリ [equiv](equiv) には、機能的に同等となる使用例があります。

エラー
------------------------------------------------------------------

つぎの内容にあてはまるときに、エラーが報告されます。

* 属性 `-term` のなかに、項目名以外が与えられている。

* 属性 `-term` のなかに、存在しない項目名がある。

* 属性 `-term` のなかに、階層的な項目名がある。

