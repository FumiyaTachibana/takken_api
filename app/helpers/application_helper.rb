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
end
