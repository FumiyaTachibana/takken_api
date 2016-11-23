Terminology.seed do |t|
  t.id            = 1
  t.big_tag_id    = 1 # integer, '大タグID'
  t.middle_tag_id = 1 # integer, '中タグID'
  t.small_tag_id  = 1 # integer, 小タグID
  t.word          = '嫡出子' # string, '用語'
  t.description   = '法律上の正式な婚姻関係にある男女から生まれた子のこと。' # text, '説明'
end

Terminology.seed do |t|
  t.id            = 2
  t.big_tag_id    = 2
  t.middle_tag_id = 2
  t.small_tag_id  = 2
  t.word          = '第１種低層住居専用地域'
  t.description   = '低層住宅に係る良好な住居の環境を保護するため定める地域。'
end