class Plan < ActiveRecord::Base
    validates :name, presence: true
    validates :price, presence: true
    
    # Plans have users
    has_many :users
end