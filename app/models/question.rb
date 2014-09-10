class Question < ActiveRecord::Base

  belongs_to :user
  has_many :responses

  validates :question, presence: true
  validates :user_id, presence: true

  default_scope { order('created_at DESC') }
end
