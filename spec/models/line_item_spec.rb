require 'rails_helper'

RSpec.describe LineItem, type: :model do
  it { should have_many(:offers).through(:itemOffers) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:description) }
end
