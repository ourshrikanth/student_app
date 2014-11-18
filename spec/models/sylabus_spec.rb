require 'rails_helper'

RSpec.describe Sylabus, :type => :model do
  it {should belong_to(:course)}
  it { should validate_presence_of(:course_id)}
  it { should validate_presence_of(:name)}
end
