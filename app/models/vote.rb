class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :response

  validates :response_id, :presence => true
  validates :user_id, :presence => true

end
