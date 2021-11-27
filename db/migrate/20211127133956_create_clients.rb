class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :email
      t.integer :phone
      t.string :name
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
