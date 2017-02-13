class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :replay
      t.string :start_date
      t.string :end_date
    end
  end
end
