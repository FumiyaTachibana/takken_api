PastQuestion.seed do |pq|
  pq.id             = 1
  pq.year_tag_id    = 7 # integer, '2015年（平成27年度）'
  pq.big_tag_id     = 1 # integer, '権利関係'
  pq.importance     = 5 # integer, 最重要
  pq.difficulty     = '難' # string
  pq.content        = '次の記述のうち、民法の条文に規定されているものはどれか。' # text
end

PastQuestion.seed do |pq|
  pq.id             = 2
  pq.year_tag_id    = 7 # integer, '2015年（平成27年度）'
  pq.big_tag_id     = 2 # integer, '法令上の制限'
  pq.importance     = 3 # integer, 普通
  pq.difficulty     = '易' # string
  pq.content        = 'Aは、その所有する甲土地を譲渡する意思がないのに、Bと通謀して、Aを売主、Bを買主とする甲土地の仮装の売買契約を締結した。この場合に関する次の記述のうち、民法の規定及び判例によれば、誤っているものはどれか。なお、この問において「善意」又は「悪意」とは、虚偽表示の事実についての善意又は悪意とする。' # text
end
