require 'rails_helper'

describe "the add a question process" do
  it 'adds a question ' do
    visit '/'
    click_button "Add a question"
    click_link "Add a choice"
    fill_in "Description", with: 'get caught picking your nose'
    click_button "Create Choice"
    expect(page).to have_content 'get caught picking your nose'

  end
end
