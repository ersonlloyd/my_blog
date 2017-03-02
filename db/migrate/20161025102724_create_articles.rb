class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :string
      t.string :article_details
      t.string :string

      t.timestamps
    end
  end
end
