Given(/^I visit the Dominos Home page$/) do
  visit('http://www.dominos.com')
end

Then(/^I should see the Dominos Home page$/) do
  expect(page).to have_selector(:id, 'homePage')
end

When(/^I click the "Order Online" tab$/) do 
  click_link("Order Online")
end

Then(/^I should see the Dominos Location Search and fill_in address$/) do
    select('House', :from => 'Address Type:')
    fill_in('Street', :with => "2531 Swift Run Street")
    fill_in('City', :with => "Vienna")
    select('VA', :from => 'State:')
    fill_in('Zip Code:', :with => "22180")
    find_button('Continue').click
end

Then(/^I should see order pizza$/) do
  click_link("Popular Items")
  find(:xpath,"//a[@href='#/order/variant/new?code=PINPASCA&toppings=Xf:1/1;1|Du:1/1;1']").click
  find(:xpath,"//a[@href='#/order/variant/new?code=W08PBBQW&sides=Bd:1']").click
  find(:xpath,"//a[@href='#/checkout/']").click
end

