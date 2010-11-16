class Account < ActiveRecord::Base
  has_many :customers
  has_many :categories
end
