class CreateAuthors < ActiveRecord::Migration[5.1]
  def up
    create_table :authors do |t|
      t.string :email
      t.string :name 
      t.string :password_digest

      t.timestamps
    end
  end

  def down
  	drop_table :authors
  end
end
