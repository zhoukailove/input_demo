# -*- coding: utf-8 -*-
module ApplicationHelper
  def state_ok(item)
    message = ''
    if item.present? && item.state.present?
      if item.state == true
        message = '有效'
      else
        message = '无效'
      end
    end
    if message.present?
      return message
    else
      return '无状态'
    end
  end
end
