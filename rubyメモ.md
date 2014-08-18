## ruby メモ

### メソッド

> Arrayクラス

	first : 配列の先頭の要素を返す
	first(n) : 配列の先頭からn番目までの要素を返す
	map {|item| block} : 要素の数だけ繰り返しblockを実行し、ブロックの戻り値を連結した配列を作成して返す
	push(string) : 配列の最後の要素にstringを追加する
	unshift(string) : 配列の最後の要素にstringを追加する
	delete : 配列の最後の要素を削除する
	delete_at(n) : n番目の要素を削除する
	shift : 配列の最初の要素を削除してその値を返す
	find_index(obj) : 配列からobjと一致する要素を返す
	insert(index, obj) : 配列のindex番目にobjを挿入する

> Stringクラス

	slice(n, len) : n+1番目からlen文字分の文字列を取り出す
	empty? : 文字列が空文字ならtrue, 空でなければfalseを返す

> Objectクラス

	clone(object) : objectのコピーを作成して返す
	dup(object) : objectのコピーを作成して返す
	
> Enumerable

	inject {|memo, item| block} : blockに要素1, 要素2を順に渡し、blockが最後に返した値を返す

### 文法

> case文

	case object
		when 値1
		when 値2
		...
		else
	end
	
> for文

	for 変数 in 範囲オブジェクト
		実行する処理1
		実行する処理2
	end
	
> each

	範囲オブジェクト.each do |変数|
		実行する処理1
		実行する処理2
	end
	
> downto

	変数2.downto(変数1) do
		実行する処理1
		実行する処理2
	end
	
### テクニック

> 要素の入れ替え

	a[0], a[1] = a[1], a[0]