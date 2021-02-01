class Topic1 < ApplicationRecord
	#has_one :page1
	has_many :page1s

	#before_update: check_data

	scope :visible, lambda {where( :visible=>true)}
	scope :sorted, lambda {order("topic1s.id")}
	scope :newest_first, lambda {order("topic1s.created_at ASC")}
	scope :search, lambda {|query|
	 where (["name LIKE ?","%#{query}%"])}


     before_update :check_data
     validates :name, presence: true

     private

       def ckeck_data
       	 if name.blank?
       	 	put "Enter data in textfields"
       	 end
       end	 	


end
