class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user_id, foreign_key: true
      t.references :micropost_id, foreign_key: {to_table:users}

      t.timestamps
      
      t.index [:user_id, :micropost_id],unique:true
    end
  end
end
