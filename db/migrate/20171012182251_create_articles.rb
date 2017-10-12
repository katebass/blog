class CreateArticles < ActiveRecord::Migration[5.1]
  def up
    create_table :articles do |t|
      t.belongs_to :author, index: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end

  def down
  	drop_table :articles
  end
end
