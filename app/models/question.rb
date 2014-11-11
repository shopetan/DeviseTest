class Question < ActiveRecord::Base
  has_many :q_texts
  belongs_to :user
end
