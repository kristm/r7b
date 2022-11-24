class AddLikesToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :likes, :integer, default: 0
  end
end
