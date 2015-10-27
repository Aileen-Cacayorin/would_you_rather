class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :votes


  validates :description, :presence => true

  def percent
    if self.votes.any?
      question = self.question
      total_votes = question.choice_a.votes.count + question.choice_b.votes.count
      votes = self.votes.count
      return ((votes.to_f/total_votes.to_f)*100).round
    end
  end

end
