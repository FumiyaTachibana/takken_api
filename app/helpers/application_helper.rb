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
end
