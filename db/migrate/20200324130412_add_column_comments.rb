class AddColumnComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :topic_id, :integer
  end
end
