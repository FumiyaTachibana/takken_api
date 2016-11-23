QuestionMiddleTag.seed do |qmt|
  qmt.id            = 1
  qmt.question_id   = 1 # 過去問ID
  qmt.middle_tag_id = 2 # 中タグID（科目ID）, 借地借家法（借地）
end

QuestionMiddleTag.seed do |qmt|
  qmt.id            = 2
  qmt.question_id   = 2
  qmt.middle_tag_id = 4 # 農地法
end
