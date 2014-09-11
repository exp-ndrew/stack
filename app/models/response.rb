class Response < ActiveRecord::Base

  belongs_to :user
  belongs_to :question
  has_many :votes

  validates :response, :presence => true
  validates :user_id, :presence => true

  def score
    score = 0
    self.votes.each do | vote |
      score += vote.value
    end
    score
  end

end
