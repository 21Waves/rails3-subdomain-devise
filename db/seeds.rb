# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
puts 'SETTING UP EXAMPLE USERS'
user1 = User.create! :name => 'Foo First User', :subdomain_name => "foo", :email => 'user@test.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user1.name
user2 = User.create! :name => 'Other User', :subdomain_name => "bar", :email => 'otheruser@test.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
puts 'SETTING UP EXAMPLE SUBDOMAINS'
subdomain1 = Subdomain.create! :name => 'foo', :user_id => user1.id
puts 'Created subdomain: ' << subdomain1.name
subdomain2 = Subdomain.create! :name => 'bar', :user_id => user2.id
puts 'Created subdomain: ' << subdomain2.name
user3 = User.create! :name => 'Foo Second User', :subdomain_name => "foo", :email => 'user2@test.com', :password => 'please', :password_confirmation => 'please'
user3 = User.create! :name => 'Foo Third User', :subdomain_name => "foo", :email => 'user3@test.com', :password => 'please', :password_confirmation => 'please'
