class User < ActiveRecord::Base

  attr_accessible :name, :email, :email_confirmation, :password, :password_confirmation

  has_secure_password

  validates_presence_of :name, :email, :password, :on => :create
  validates_confirmation_of :email, :on => :create
end
