class CreateMyposts < ActiveRecord::Migration[5.1]
  def change
    create_table :myposts do |t|
      t.string :Title
      t.text :Content
      t.timestamps
    end
  end
end
