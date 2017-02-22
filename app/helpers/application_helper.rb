module ApplicationHelper
  def flash_messages
    flash.map do |level, message|
      content_tag(:div, class: "alert alert-#{message_level(level)}") do
        content_tag(:p, message, class: 'message')
      end
    end.join(' ').html_safe
  end

  def error_messages(*objects)
    messages = objects.compact.map { |o| o.errors.full_messages }.flatten

    unless messages.empty?
      content_tag(:div, class: "alert alert-#{message_level :error}") do
        list_items = messages.map { |m| content_tag(:li, m) }
        content_tag(:ul, list_items.join.html_safe, class: 'list-unstyled')
      end
    end
  end

  # Twitter Bootstrap用にクラス名を変換する
  def message_level(level)
    case level.to_sym
    when :notice then :success
    when :alert then :warning
    when :error then :danger
    end
  end

  ### Web側 #####################################################################

  # 要点整理のルートパスを決定する
  def organize_points_routing(tag)
    content_tag(:a, tag.name, href: "#{request.path}/#{set_organize_points_routing(tag)}", class: "btn btn-default btn-lg btn-block").html_safe
  end

  # 中タグ(科目タグ)のbig_tag_idを見て、ルート振り分けメソッドへ
  def set_organize_points_routing(tag)
    case tag.big_tag_id
    when 1 then set_civil_codes_routing(tag.name)
    when 2 then set_legal_restrictions_routing(tag.name)
    when 3 then set_real_estate_transaction_acts_routing(tag.name)
    when 4 then set_tax_others_routing(tag.name)
    end
  end

  # 4種の分野別にbs-calloutリンクボタン作成(要点整理ページ)
  def web_by_category_link_list(big_tags = [])
    big_tags.map do |bt|
      content_tag(:div, class: "bs-callout bs-callout-#{set_tag_color(bt.id)}") do
        content_tag(:a, bt.name, href: "#{request.path}/#{abc(bt)}", class: "btn btn-#{set_tag_color(bt.id)} btn-lg btn-block")
      end
    end.join(' ').html_safe
  end

  # 分野別routing
  def abc(bt)
    case bt.id
    when 1 then 'civil_codes'
    when 2 then 'legal_restrictions'
    when 3 then 'real_estate_transaction_acts'
    when 4 then 'tax_others'
    end
  end

  # 権利関係（要点整理routing）
  def set_civil_codes_routing(tag_name)
    #binding.pry
    case tag_name
    when '制限行為能力者'   then 'restricted_acting_capacity_persons'
    when '代理'            then 'agency'
    #when '意思表示'        then ''
    #when '時効'           then ''
    #when '抵当権'          then ''
    #when '連帯債務'        then ''
    #when '保証'           then ''
    #when '債権譲渡'        then ''
    #when '債務不履行'      then ''
    #when '契約解除'        then ''
    #when '担保責任'        then ''
    #when '相殺'            then ''
    #when '委任'            then ''
    #when '敷金'            then ''
    when '借地借家法(借地)' then 'act_on_land_and_building_leases_of_leases_lands'
    when '借地借家法(借家)' then 'act_on_land_and_building_leases_of_leases_buildings'
    #when '相続'            then ''
    #when '共有'            then ''
    #when '区分所有法'       then ''
    #when '物権変動'         then ''
    #when '不動産登記法'     then ''
    #when '不法行為'         then ''
    #when '相隣関係'         then ''
    #when '担保物権'         then ''
    end
  end

  # 法令上の制限（要点整理routing）
  def set_legal_restrictions_routing(tag_name)
    case tag_name
    #when '都市計画法'       then ''
    when '開発許可'        then 'development_permissions'
    #when '単体'           then ''
    #when '集合'           then ''
    #when '確認'           then ''
    #when '検査'           then ''
    #when '容積'           then ''
    #when '建ぺい率'        then ''
    #when '防火地域'        then ''
    when '農地法'          then 'agricultural_land_acts'
    #when '国土利用計画法'   then ''
    #when '土地区画整理法'   then ''
    #when '宅地造成等規制法' then ''
    end
  end

  # 宅建業法（要点整理routing）
  def set_real_estate_transaction_acts_routing(tag_name)
    case tag_name
    #when '免許'            then ''
    #when '宅建士'           then ''
    #when '営業保証金'       then ''
    when '保証協会'         then 'guarantee_associations'
    #when '誇大広告等の禁止'  then ''
    #when '媒介契約'         then ''
    #when '重要事項の説明'    then ''
    #when '37条書面'         then ''
    when '8種制限'          then '8kinds_limits'
    #when '報酬'             then ''
    #when '監督処分'          then ''
    #when '住宅瑕疵担保履行法' then ''
    end
  end

  # 税その他（要点整理routing）
  def set_tax_others_routing(tag_name)
    case tag_name
    when '所得税(譲渡所得)'  then 'income_taxes'
    #when '不動産取得税'      then ''
    #when '登録免許税'        then ''
    when '印紙税'           then 'stamp_taxes'
    #when '固定資産税'        then ''
    #when '不動産鑑定評価基準' then ''
    #when '地価公示法'        then ''
    #when '景品表示法'        then ''
    #when '土地'             then ''
    #when '建物'             then ''
    #when '住宅金融支援機構法' then ''
    end
  end


  ###############################################################################


  ### 管理側 #####################################################################

  # 4種の分野別にbs-calloutリンクボタン作成
  def by_category_link_list(big_tags = [])
    big_tags.map do |bt|
      content_tag(:div, class: "bs-callout bs-callout-#{set_tag_color(bt.id)}") do
        content_tag(:a, bt.name, href: "#{request.path}/#{bt.id}/#{set_link}", class: "btn btn-#{set_tag_color(bt.id)} btn-lg btn-block")
      end
    end.join(' ').html_safe
  end

  ## 指定されたページの「分野別ページ」のリンクをセットする
  def set_link
    case request.path
    when "/web/terminologies"   then "by_category_terminologies" # 用語集管理 -> 分野別用語集に
    when "/web/questions"       then "by_category_questions"     # ◯✕正誤問題 -> 分野別◯✕正誤問題に
    when "/admin/terminologies" then "by_category_terminologies" # 管理側/用語集管理 -> 分野別用語集に
    when "/admin/questions"     then "by_category_questions"     # 管理側/◯✕正誤問題 -> 分野別◯✕正誤問題に
    end
  end

  # 大タグのラベル色をセットする（分野タグ）
  # tag: big_tag
  def big_tag_label_color(tag)
    content_tag(:span, tag.name, class: "label label-#{set_tag_color(tag.id)}").html_safe
  end

  # 中小タグのラベル色をセットする（科目タグ・キーワードタグ）
  # tags: middle_tags, small_tagsの配列
  def tags_label_color(tags)
    tags.map do |tag|
      content_tag(:span, tag.name, class: "label label-#{set_tag_color(tag.big_tag_id)}")
    end.join(' ').html_safe
  end

  # 分野毎にラベルの色を設定
  def set_tag_color(tag_id)
    case tag_id
    when 1 then :danger  # 権利関係 -> 赤色
    when 2 then :primary # 法令上の制限 -> 青色
    when 3 then :success # 宅建業法 -> 緑色
    when 4 then :warning # 税その他 -> オレンジ色
    end
  end

  ###############################################################################
end
