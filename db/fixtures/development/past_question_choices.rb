PastQuestionChoice.seed do |pqc|
  pqc.id               = 1
  pqc.past_question_id = 1 # integer, 過去問ID
  pqc.content          = '債務の不履行に基づく人の生命又は身体の侵害による損害賠償請求権は、権利を行使することができる時から20年間行使しないときは、時効によって消滅する旨' # text, 選択肢
  pqc.judgement        = '✕' # string
  pqc.description      = '1番は間違いです。' # text, 解説
end

PastQuestionChoice.seed do |pqc|
  pqc.id               = 2
  pqc.past_question_id = 1
  pqc.content          = '事業のために負担した貸金債務を主たる債務とする保証契約は、保証人になろうとする者が、契約締結の日の前１か月以内に作成された公正証書で保証債務を履行する意思を表示していなければ無効となる旨'
  pqc.judgement        = '✕'
  pqc.description      = '2番は間違いです。'
end

PastQuestionChoice.seed do |pqc|
  pqc.id               = 3
  pqc.past_question_id = 1
  pqc.content          = '併存的債務引受は、債権者と引受人となる者との契約によってすることができる旨'
  pqc.judgement        = '✕'
  pqc.description      = '3番は間違いです。'
end

PastQuestionChoice.seed do |pqc|
  pqc.id               = 4
  pqc.past_question_id = 1
  pqc.content          = '債務の不履行に関して債権者に過失があったときは、裁判所は、これを考慮して、損害賠償の責任及びその額を定める旨'
  pqc.judgement        = '◯'
  pqc.description      = '4番は正解です。'
end

PastQuestionChoice.seed do |pqc|
  pqc.id               = 5
  pqc.past_question_id = 2 # integer, 過去問ID
  pqc.content          = '債務の不履行に基づく人の生命又は身体の侵害による損害賠償請求権は、権利を行使することができる時から20年間行使しないときは、時効によって消滅する旨' # text, 選択肢
  pqc.judgement        = '✕' # string
  pqc.description      = '1番は間違いです。' # text, 解説
end

PastQuestionChoice.seed do |pqc|
  pqc.id               = 6
  pqc.past_question_id = 2
  pqc.content          = '事業のために負担した貸金債務を主たる債務とする保証契約は、保証人になろうとする者が、契約締結の日の前１か月以内に作成された公正証書で保証債務を履行する意思を表示していなければ無効となる旨'
  pqc.judgement        = '✕'
  pqc.description      = '2番は間違いです。'
end

PastQuestionChoice.seed do |pqc|
  pqc.id               = 7
  pqc.past_question_id = 2
  pqc.content          = '併存的債務引受は、債権者と引受人となる者との契約によってすることができる旨'
  pqc.judgement        = '✕'
  pqc.description      = '3番は間違いです。'
end

PastQuestionChoice.seed do |pqc|
  pqc.id               = 8
  pqc.past_question_id = 2
  pqc.content          = '債務の不履行に関して債権者に過失があったときは、裁判所は、これを考慮して、損害賠償の責任及びその額を定める旨'
  pqc.judgement        = '◯'
  pqc.description      = '4番は正解です。'
end
