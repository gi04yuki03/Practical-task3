 require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
 puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
 memo_type = gets.to_i
  # ユーザーの入力値を取得し、数字へ変換しています
 input_number = memo_type
 
 # if文を使用して続きを作成していきましょう。
 if input_number == 1
  p "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  p "メモの内容を記入して下さい"
  p "完了したらCtrl + Dをおします"
  imput_memo = STDIN.read.chomp
  memo = imput_memo.chomp

  CSV.open("#{file_name}.csv" , "w") do |csv|
  csv.puts ["#{imput_memo}"]
  end
 
 elsif input_number == 2
  p "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  
  p "メモの内容を記入して下さい"
  p "完了したらCtrl + Dをおします"
  imput_memo = STDIN.read.chomp
  memo = imput_memo.chomp
  
  CSV.open("#{file_name}.csv" , "a") do |csv|
  csv.puts ["#{imput_memo}"]
  end
  
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
 else
  p "1か2の数字を入力してください"
  end
