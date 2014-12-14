class CreateImpacts < ActiveRecord::Migration
  def change
    create_table :impacts do |t|
      t.text :description
			t.references :activity

      t.timestamps
    end
  end
end
