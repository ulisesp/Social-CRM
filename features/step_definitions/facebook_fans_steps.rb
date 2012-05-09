
#Given /^no campaign exists for client "(\d+)"$/ do |client|
#  FacebookDatum.find(:first, :conditions => { :client => client }).should be_nil
#end

#Given /^I am a user named "([^"]*)" with an email "([^"]*)" and password "([^"]*)"$/ do |name, email, password|
#  User.new(:name => name,
#            :email => email,
#            :password => password,
#            :password_confirmation => password).save!
#end
