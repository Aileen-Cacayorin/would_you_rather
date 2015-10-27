class Question < ActiveRecord::Base
  has_many :choices, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, :through => :choices

  def choice_a
    return self.choices.first
  end

  def choice_b
    return self.choices.last
  end
  
end
