SmallTag.seed do |st|
  st.id            = 1
  st.big_tag_id    = 1 # 権利関係
  st.middle_tag_id = 1 # 制限行為能力者
  st.name          = '成年被後見人'
end

SmallTag.seed do |st|
  st.id            = 2
  st.big_tag_id    = 1 # 権利関係
  st.middle_tag_id = 2 # 借地借家法（借地）
  st.name          = '事業用定期借地権'
end

SmallTag.seed do |st|
  st.id            = 3
  st.big_tag_id    = 2 # 法令上の制限
  st.middle_tag_id = 3 # 開発許可
  st.name          = '特定工作物'
end

SmallTag.seed do |st|
  st.id            = 4
  st.big_tag_id    = 2 # 法令上の制限
  st.middle_tag_id = 4 # 農地法
  st.name          = '農地法3条'
end

SmallTag.seed do |st|
  st.id            = 5
  st.big_tag_id    = 3 # 宅建業法
  st.middle_tag_id = 5 # 保証協会
  st.name          = '弁済業務保証金分担金'
end

SmallTag.seed do |st|
  st.id            = 6
  st.big_tag_id    = 3 # 宅建業法
  st.middle_tag_id = 6 # 8種制限
  st.name          = 'クーリング・オフ'
end

SmallTag.seed do |st|
  st.id            = 7
  st.big_tag_id    = 4 # 税その他
  st.middle_tag_id = 7 # 所得税（譲渡所得）
  st.name          = '特別控除'
end

SmallTag.seed do |st|
  st.id            = 8
  st.big_tag_id    = 4 # 税その他
  st.middle_tag_id = 8 # 印紙税
  st.name          = '非課税文書'
end