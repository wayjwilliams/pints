class CreatePints < ActiveRecord::Migration
  def change
    create_table :pints do |t|
      t.string :address
      t.string :image
      t.text :note

      t.timestamps
    end
  end
end
