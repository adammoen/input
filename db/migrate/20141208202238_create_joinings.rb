class CreateJoinings < ActiveRecord::Migration
  def change
    create_table :joinings do |t|
      t.datetime :joined_at
      t.text :reason
      t.integer :user_id
      t.integer :group_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
