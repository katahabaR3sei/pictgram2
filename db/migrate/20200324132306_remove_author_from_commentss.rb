class RemoveAuthorFromCommentss < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :user, :integer
  end
end
