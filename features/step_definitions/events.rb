Given /^I evaluate page script "([^\"]*)"$/ do |javascript|
  page.evaluate_script javascript
end