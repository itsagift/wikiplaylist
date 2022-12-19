class AddArticleReference < ActiveRecord::Migration[7.0]
  def change
    change_table :articles do |t|
      t.belongs_to :article_list
    end
  end
end
