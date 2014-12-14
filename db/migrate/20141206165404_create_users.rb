class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :description
			t.text :first_name
			t.text :last_name
			t.text :email

      t.timestamps
    end
  end
end
