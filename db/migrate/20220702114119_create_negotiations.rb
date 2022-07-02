class CreateNegotiations < ActiveRecord::Migration[7.0]
  def change
    create_table :negotiations do |t|
      t.string :name
      t.string :client_name
      t.integer :amount
      t.date :completion_date
      t.text :note
      t.integer :rate
      t.integer :phase

      t.timestamps
    end
  end
end
