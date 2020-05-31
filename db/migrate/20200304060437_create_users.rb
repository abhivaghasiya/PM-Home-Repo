class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :mobile
      t.string :country
      t.string :state
      t.string :city
      t.string :gender
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
