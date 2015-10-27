require 'rails_helper'

describe Choice do
  it {should belong_to :question}
  it {should have_many :votes}
  it {should validate_presence_of :description}
end
