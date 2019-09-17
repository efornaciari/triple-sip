class CreateSips < ActiveRecord::Migration[5.2]
  def change
    create_table :sips do |t|
      t.integer :time
      t.boolean :yacked, default: false
      t.belongs_to :sipper
      t.timestamps
    end
  end
end
