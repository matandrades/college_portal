class CreateHubs < ActiveRecord::Migration[8.0]
  def change
    create_table :hubs do |t|
      t.string :name
      t.string :city
      t.string :state_code

      t.timestamps
    end
  end
end
