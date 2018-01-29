class User < ApplicationRecord
    #becuase there is one-many relationship and user has one and todos has many that's why 
    has_many :todos
end