class AddArticleListReference < ActiveRecord::Migration[7.0]
  def change
    change_table :article_lists do |t|
      t.belongs_to :user
    end
  end
end
