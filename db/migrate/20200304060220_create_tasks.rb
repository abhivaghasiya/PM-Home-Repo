class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :project, null: false #, foreign_key: true
      t.string :title
      t.text :description
      t.string :status
      t.references :user, null: false #, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :spend_time
      t.decimal :estimated_time

      t.timestamps
    end
  end
end
