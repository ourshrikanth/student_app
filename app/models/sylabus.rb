class Sylabus < ActiveRecord::Base
  belongs_to :course
   validates :name, :course_id, presence: true
end
