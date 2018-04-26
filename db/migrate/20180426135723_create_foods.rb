class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :price
      t.belongs_to :store, index: true
      t.timestamps
    end
  end
end
