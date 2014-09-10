require 'rails_helper'

describe Vote do
  it { should belong_to :user }
  it { should belong_to :response }
  it { should validate_presence_of :user_id}
  it { should validate_presence_of :response_id}
end
