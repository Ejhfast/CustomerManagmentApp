class Accountaction < ActiveRecord::Base
  has_many :usereffects
  belongs_to :account
end
