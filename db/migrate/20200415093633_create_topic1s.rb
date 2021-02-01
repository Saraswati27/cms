class CreateTopic1s < ActiveRecord::Migration[5.0]
  def change
    create_table :topic1s do |t|
    	t.string "name"
    	t.integer "position"
    	t.boolean "visible" , :default => false

        t.timestamps 
      
    end
  end
end
