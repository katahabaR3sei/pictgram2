class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.integer :user_id, foreign_key: true
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
