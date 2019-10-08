class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.user :belongs_to
      t.article :belongs_to

      t.timestamps
    end
  end
end
