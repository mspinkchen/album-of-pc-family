class CreatePhs < ActiveRecord::Migration[5.1]
  def change
    create_table :phs do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :file_location
      t.timestamps
    end
  end
end
