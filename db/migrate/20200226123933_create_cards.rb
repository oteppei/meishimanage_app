class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :client_name
      t.string :client_company
      t.integer :user_id
      t.string :relation

      t.timestamps
    end
  end
end
