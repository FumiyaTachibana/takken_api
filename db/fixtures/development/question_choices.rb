QuestionChoice.seed do |qc|
  qc.id          = 1
  qc.question_id = 1 # integer, 過去問ID
  qc.content     = '◯' # text, 選択肢
  qc.judgement   = '◯' # string, 正誤判定
  qc.description = '正解です！' # text, 解説
end

QuestionChoice.seed do |qc|
  qc.id          = 2
  qc.question_id = 1
  qc.content     = '✕'
  qc.judgement   = '✕'
  qc.description = '不正解です。'
end

QuestionChoice.seed do |qc|
  qc.id          = 3
  qc.question_id = 2
  qc.content     = '◯'
  qc.judgement   = '✕'
  qc.description = '不正解です。'
end

QuestionChoice.seed do |qc|
  qc.id          = 4
  qc.question_id = 2
  qc.content     = '✕'
  qc.judgement   = '◯'
  qc.description = '正解です！'
end
