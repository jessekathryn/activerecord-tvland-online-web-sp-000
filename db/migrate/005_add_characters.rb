class AddCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string 
end