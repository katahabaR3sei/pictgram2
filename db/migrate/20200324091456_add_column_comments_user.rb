class AddColumnCommentsUser < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :user, :integer
  end
end
