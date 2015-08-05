class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :event_type
      t.text :comments
      
      t.timestamps
    end
  end
end
