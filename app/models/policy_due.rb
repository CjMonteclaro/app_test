class PolicyDue < ApplicationRecord
  self.table_name = "policies_due"
  self.primary_key = "policy_no"
 octopus_establish_connection(:adapter => "mysql2", :database => "fgen", :host => "localhost", :port => "3306", :username => "root", :password => "Fortune")
end
