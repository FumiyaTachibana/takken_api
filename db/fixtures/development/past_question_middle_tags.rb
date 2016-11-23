PastQuestionMiddleTag.seed do |pqmt|
  pqmt.id               = 1
  pqmt.past_question_id = 1 # 過去問ID
  pqmt.middle_tag_id    = 1 # 中タグID（科目ID）, 制限行為能力者
end

PastQuestionMiddleTag.seed do |pqmt|
  pqmt.id               = 2
  pqmt.past_question_id = 1
  pqmt.middle_tag_id    = 2 # 借地借家法（借地）
end

PastQuestionMiddleTag.seed do |pqmt|
  pqmt.id               = 3
  pqmt.past_question_id = 1
  pqmt.middle_tag_id    = 3 # 開発許可
end

PastQuestionMiddleTag.seed do |pqmt|
  pqmt.id               = 4
  pqmt.past_question_id = 2
  pqmt.middle_tag_id    = 4 # 農地法
end

PastQuestionMiddleTag.seed do |pqmt|
  pqmt.id               = 5
  pqmt.past_question_id = 2
  pqmt.middle_tag_id    = 5 # 保証協会
end

PastQuestionMiddleTag.seed do |pqmt|
  pqmt.id               = 6
  pqmt.past_question_id = 2
  pqmt.middle_tag_id    = 6 # 8種制限
end