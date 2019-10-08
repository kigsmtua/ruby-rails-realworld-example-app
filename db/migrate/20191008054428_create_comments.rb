class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.article :belongs_to

      t.timestamps
    end
  end
end
