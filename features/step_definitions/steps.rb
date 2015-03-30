require 'pry'

When(/^I go to '(.*)'$/) do |url|
  $browser.goto url
end

Then(/^I should see the homepage$/) do
  expect($browser.element(id: 'homepage')).to exist
end

When(/^search for 'cats'$/) do
  $browser.text_field(name: 'term').set('cats')
  $browser.button(:class, 'submit_search').click
end

Then(/^I should see the search results page for 'cats'$/) do
  expect($browser.text).to include('YOU SEARCHED FOR "CATS"')
end
