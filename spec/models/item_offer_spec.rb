require 'rails_helper'

RSpec.describe ItemOffer, type: :model do
  it { should belong_to(:offer) }
  it { should belong_to(:lineItem) }
end
