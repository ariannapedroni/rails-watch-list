class Movie < ApplicationRecord
    has_many :bookmarks
    has_many :lists, through: :bookmarks
    
    validates :name, presence: true, uniqueness: true
    validates :overview, presence: true
end
