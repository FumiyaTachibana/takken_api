Question.seed do |q|
  q.id             = 1
  q.year_tag_id    = 1 # integer, 'なし'
  q.big_tag_id     = 1 # integer, '権利関係'
  q.importance     = 5 # integer, 最重要
  q.difficulty     = '易' # string
  q.content        = 'BがAの承諾を得て土地をCに転貸し、建物を譲渡した場合、AB間、BC間の契約が、ともに期間満了し更新がなければ、CはAに対し直接建物買取請求権を有する。' # text
end

Question.seed do |q|
  q.id             = 2
  q.year_tag_id    = 1 # integer, 'なし'
  q.big_tag_id     = 2 # integer, '法令上の制限'
  q.importance     = 3 # integer, 普通
  q.difficulty     = '難' # string
  q.content        = '採草牧草地の所有者がその土地に500㎡の農業用施設を建設する場合、農地法第4条の許可を受けなければならない。' # text
end
