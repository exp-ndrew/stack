require 'rails_helper'

describe Question do

  it { should belong_to :user }
  it { should have_many :responses }
  it { should validate_presence_of :question }
  it { should validate_presence_of :user_id }

  it "should order the scope by created_at, newest first" do
    question1 = Question.create({question: "Is it Saturday?", user_id: "1"})
    question2 = Question.create({question: "Is it Friday?", user_id: "2"})
    expect(Question.all).to eq [question2, question1]
  end

end
