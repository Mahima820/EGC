class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :location
      t.string :interest
      t.attachment :photo
      t.text :resume
      t.text :cover_letter

      t.timestamps
    end
  end
end
