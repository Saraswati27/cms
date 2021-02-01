class CreatePage1s < ActiveRecord::Migration[5.0]
  def change
    create_table :page1s do |t|
    	t.integer "topic1_id"
    	t.integer "position"
    	t.string "name"

      t.timestamps

    end
    add_index("page1s","topic1_id")
  end
end
