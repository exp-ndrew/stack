class Response < ActiveRecord::Base

  belongs_to :user
  belongs_to :question

  validates :response, :presence => true
  validates :user_id, :presence => true

end
