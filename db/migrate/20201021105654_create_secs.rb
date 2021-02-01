class CreateSecs < ActiveRecord::Migration[5.0]
  def change
    create_table :secs do |t|
    	t.integer "page1_id"
    	t.string "name"
    	t.integer "position"
    	t.text "content"

      t.timestamps 

    end
    add_index("secs","page1_id")
  end

    
end
