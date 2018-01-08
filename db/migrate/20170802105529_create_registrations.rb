class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :college
      t.integer :event_id

      t.timestamps
    end
  end
end
