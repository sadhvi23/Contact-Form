class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    # Creating a table with the name of contacts which has few mandatory and one non-mandatory column
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone_number, limit: 32
      t.text :message, null: false
      t.string :locale, null: false, limit: 16, default: "en"
      t.timestamps
    end
  end
end
