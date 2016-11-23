MiddleTag.seed do |mt|
  mt.id            = 1
  mt.big_tag_id    = 1 # 権利関係
  mt.name          = '制限行為能力者'
  mt.importance    = 1 # 重要度
end

MiddleTag.seed do |mt|
  mt.id            = 2
  mt.big_tag_id    = 1 # 権利関係
  mt.name          = '借地借家法（借地）'
  mt.importance    = 2
end

MiddleTag.seed do |mt|
  mt.id            = 3
  mt.big_tag_id    = 2 # 法令上の制限
  mt.name          = '開発許可'
  mt.importance    = 3
end

MiddleTag.seed do |mt|
  mt.id            = 4
  mt.big_tag_id    = 2 # 法令上の制限
  mt.name          = '農地法'
  mt.importance    = 4
end

MiddleTag.seed do |mt|
  mt.id            = 5
  mt.big_tag_id    = 3 # 宅建業法
  mt.name          = '保証協会'
  mt.importance    = 5
end

MiddleTag.seed do |mt|
  mt.id            = 6
  mt.big_tag_id    = 3 # 宅建業法
  mt.name          = '8種制限'
  mt.importance    = 1
end

MiddleTag.seed do |mt|
  mt.id            = 7
  mt.big_tag_id    = 4 # 税その他
  mt.name          = '所得税（譲渡所得）'
  mt.importance    = 2
end

MiddleTag.seed do |mt|
  mt.id            = 8
  mt.big_tag_id    = 4 # 税その他
  mt.name          = '印紙税'
  mt.importance    = 3
end