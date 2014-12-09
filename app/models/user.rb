# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  attr_accessible :email, :mobile, :name, :state
  validates_presence_of :email, :mobile, :name,:message=> '不能为空'
  validates_uniqueness_of :email, :mobile,:message=>'必须唯一'
  validates_format_of  :email, :message => "邮箱格式不正确!", :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_format_of  :mobile, :message => "手机格式不正确!", :with => /^(?:13\d|15\d|18\d)\d{5}(\d{3}|\*{3})$/
  validates_numericality_of :mobile ,:message => '手机号码必须为数字'
  validates_length_of :mobile ,is:11 , :message => "请输入11位电话号码"
end
