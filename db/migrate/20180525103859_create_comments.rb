class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :mypost
      t.string :content_2
      t.timestamps
    end
  end
end
