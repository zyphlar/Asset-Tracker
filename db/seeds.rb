# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

User.create(:name => 'Jason Katz',   :email => 'jason.katz@moonscoop.com',         :password => 'admin2')
User.create(:name => 'Patrick Coy',  :email => 'patrick.coy@moonscoop.com',        :password => 'admin1')
