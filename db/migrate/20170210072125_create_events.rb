class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :replay
      t.text :start_date
      t.text :end_date
    end
  end
end
