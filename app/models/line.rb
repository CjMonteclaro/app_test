class Line < ApplicationRecord
  self.table_name = "giis_line"
  self.primary_key = "line_cd"
 octopus_establish_connection(:adapter => "mysql2", :database => "fortune_general", :host => "localhost", :port => "3306", :username => "root", :password => "Fortune")
end
