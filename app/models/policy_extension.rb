class PolicyExtension < ApplicationRecord
  octopus_establish_connection(:adapter => "mysql2", :database => "fgen", :host => "localhost", :port => "3306", :username => "fgen", :password => "fortunegeneral")

  before_save :compute_new_due_date

  def compute_new_due_date
    self.new_due_date = orig_due_date + extension
  end
end
