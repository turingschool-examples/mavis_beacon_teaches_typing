require 'test_helper'

class UserMakesAttemptTest < ActionDispatch::IntegrationTest
  test "attempt is made and scored" do
    level = Level.create(
      title: "Easy",
      text: "This is the first level of the typing test."
    )

    visit level_path(level)
    click_link_or_button 'Start Typing Test'
    fill_in 'attempt[text]', :with => "This is the first kevel of the typing text."
    click_button 'Score'

    attempt = Attempt.last

    assert_equal level_path(level), current_path
    assert page.has_content?(level.title)
    
    within('#attempts li:first') do
      assert page.has_content?(attempt.created_at)
      assert page.has_content?('95%')
    end
  end
end
