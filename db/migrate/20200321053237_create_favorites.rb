class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id, foreign_key: true
      t.integer :topic_id, foreign_key: true

      t.timestamps
    end
  end
end
