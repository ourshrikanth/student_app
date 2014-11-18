require 'rails_helper'

RSpec.describe Course, :type => :model do
  it {should have_many(:chapters)}
  it {should have_many(:sylabuses)}
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:duration)}
  it { should validate_presence_of(:charge)}
  it { should validate_numericality_of(:duration)}
  it { should validate_numericality_of(:charge)}
end
