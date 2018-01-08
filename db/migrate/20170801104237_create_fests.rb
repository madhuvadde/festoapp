class CreateFests < ActiveRecord::Migration[5.1]
  def change
    create_table :fests do |t|
    	t.string :name
    	t.text:description
    	t.date :start_date
    	t.date:end_date

      t.timestamps
    end
  end
end
