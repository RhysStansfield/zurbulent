Given(/^I am on the homepage$/) do
  visit '/'
  expect(current_path).to eq '/'
end

When(/^I add a Zurb$/) do
  fill_in 'Name', with: 'Blang'
  fill_in 'Face crumps', with: 10
  fill_in 'Email', with: 'blang@blong.zorg'
  click_button 'Create Zurb'
end

Then(/^an email should be sent to "(.*?)"$/) do |email_address|
  open_email email_address
  expect(current_email).not_to be_nil
end

Then(/^the email should contain "(.*?)"$/) do |content|
  expect(current_email).to have_content content
end