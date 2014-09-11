require 'rails_helper'

describe Response do
  it { should belong_to :user}
  it { should belong_to :question}
  it { should validate_presence_of :response}
  it { should validate_presence_of :user_id}
  it { should have_many :votes }

  it "should add up all the votes for a specific response" do
    user = User.create({full_name: "Test User", email: "omg@aol.com", password:
    "go"})
    question = Question.create({question: "What time is it?", user_id: "#{user.id}", content: "I can't see the clock"})
    response = Response.create({response: "Don't be lazy, look at a clock ugh", user_id: "#{user.id}", question_id: "#{question.id}"})
    voteup = Vote.create({value: "1", response_id: "#{response.id}", user_id: "#{user.id}"})
    votedown = Vote.create({value: "-1", response_id: "#{response.id}", user_id: "#{user.id}"})
    voteup1 = Vote.create({value: "1", response_id: "#{response.id}", user_id: "#{user.id}"})
    voteup2 = Vote.create({value: "1", response_id: "#{response.id}", user_id: "#{user.id}"})
    expect(response.score).to eq 2

  end
end
