class Token < ApplicationRecord
  belongs_to :user
  validates_presence_of :token_string
  validates_presence_of :nickname
end
