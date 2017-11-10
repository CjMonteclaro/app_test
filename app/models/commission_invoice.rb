class CommissionInvoice < ApplicationRecord
  self.table_name = "gipi_comm_invoice"
  self.primary_key = "intrmdry_intm_no"
  octopus_establish_connection(:adapter => "oracle_enhanced", :database => "DEMO", :host => "172.16.110.8", :port => "1521", :username => "CPI", :password => "cpi12345!")


  alias_attribute :gross_commission, :commission_amt
  alias_attribute :w_tax, :wholding_tax

  belongs_to :policy, foreign_key: :policy_id
  has_one :intermediary, foreign_key: :intm_no

  def net_commission
    gross_commission - w_tax
  end
end
