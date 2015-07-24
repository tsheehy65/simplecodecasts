class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true
    # validate :comments, presence: true
end