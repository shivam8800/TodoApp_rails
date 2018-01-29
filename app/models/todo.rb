class Todo < ApplicationRecord
    #we can't push empty data to database because of this line but why I don't know
   validates :name, presence: true 
    #for checking error
    #todo3.error.any? 
    #if true we can see the full error
    #todo3.errors.full_messages

    #we also have to put data in description field
    validates :description, presence: true

    belongs_to :user
end