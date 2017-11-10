json.extract! policy_extension, :id, :policy_no, :endorsement_no, :assured_no, :intermediary_no, :intermediary_name, :effective_date, :premium_due, :credit_term, :orig_due_date, :extension, :new_due_date, :created_at, :updated_at
json.url policy_extension_url(policy_extension, format: :json)
