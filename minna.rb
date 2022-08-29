require 'paint'
def minna
  arr =
    [
      ["7月期のお母さん","寝るのと食べるの大好き","中野あゆみ"],
      ["いつも企画ありがとう","睡眠に悩み中","キムボムテ"],
      ["いつも笑顔をありがとう","ウエディング戦士","ヤング(内村)愛美"],
      ["前歯が虫歯な吹奏楽部","7月期のムードメーカー","大塚昂士"],
      ["布団敷くスペースない","3の倍数でワープする男","世界のABEMATU"],
      ["Netflix大好き","7月期の風紀員","田村sayaka"],
      ["癒し系ホストギタリスト","宇宙一のイケメン","倉持祐介"],
      ["疾風のイケメン冒険者","世界一のイケメン","永島匠"],
      ["脇腹治った","日本一のイケメン","motoya"]

    ]
  arr.shuffle
end

puts "15:00 - 16:30"
member_arr = minna
member_arr.each_with_index do |person,n|
  person.each_with_index do |row,z|
    if z == 0
      n_str = Paint[row,:red]
    elsif z == 1
      n_str = Paint[row,:magenta]
    else
      n_str = Paint[row,:yellow]
    end

    puts n_str
  end
  if (n + 1) % 3 == 0
    puts "--------------"
  else
    puts "vs"
  end
end

member_arr2_head = []
member_arr2_mid = []
member_arr2_tail = []
member_arr.each_with_index do |person,n|
  if n % 3 == 0
    member_arr2_head << person
  elsif n % 3 == 1
    member_arr2_mid << person
  else
    member_arr2_tail << person
  end
end

puts "17:00 - 18:30"
member_arr2 = member_arr2_head + member_arr2_mid + member_arr2_tail
member_arr2.each_with_index do |person,n|
  person.each_with_index do |row,z|
    if z == 0
      n_str = Paint[row,:red]
    elsif z == 1
      n_str = Paint[row,:magenta]
    else
      n_str = Paint[row,:yellow]
    end

    puts n_str
  end
  
  if (n + 1) % 3 == 0
    puts "--------------"
  else
    puts "vs"
  end
end
