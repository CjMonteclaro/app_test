class OracleLine < ApplicationRecord
  self.table_name = "giis_line"
  self.primary_key = "line_cd"
 octopus_establish_connection(:adapter => "oracle_enhanced", :database => "DEMO", :host => "172.16.110.8", :port => "1521", :username => "CPI", :password => "cpi12345!")

end
