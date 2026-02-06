class ChangeDateDreamTypeInPosts < ActiveRecord::Migration[8.1]
  def change
    change_column :posts, :date_dream, :date
  end
end
