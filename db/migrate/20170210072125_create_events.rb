class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :replay
      t.string :start
      t.string :end
    end
  end
end
