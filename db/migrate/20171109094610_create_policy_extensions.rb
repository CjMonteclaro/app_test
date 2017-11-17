class CreatePolicyExtensions < ActiveRecord::Migration[5.0]
  # using(:shard_two)

  def change
    create_table :policy_extensions do |t|
      t.string :policy_no
      t.string :endorsement_no
      t.integer :assured_no
      t.integer :intermediary_no
      t.string :intermediary_name
      t.date :effective_date
      t.decimal :premium_due
      t.integer :credit_term
      t.date :orig_due_date
      t.integer :extension
      t.date :new_due_date

      t.timestamps
    end
  end
end
