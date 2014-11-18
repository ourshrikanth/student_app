class Course < ActiveRecord::Base
  has_many :chapters
  has_many :sylabuses
  validates :name, :description, :duration, :charge, presence: true
  validates :duration, :charge, numericality: true
end
