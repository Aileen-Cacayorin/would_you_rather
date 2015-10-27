class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :votes

  validates :description, :presence => true

  def percentage
    question = self.question
    total_votes = question.choices.count
    votes = self.votes
    return ((votes/total_votes)*100).round
  end
end
