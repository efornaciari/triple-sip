class CreateSippers < ActiveRecord::Migration[5.2]
  def change
    create_table :sippers do |t|
      t.string :first_name
      t.string :last_initial
      t.timestamps
    end
  end
end
