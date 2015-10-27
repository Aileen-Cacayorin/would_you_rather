require 'rails_helper'

describe Question do
    it {should have_many :choices}
    it {should have_many :comments}

end
