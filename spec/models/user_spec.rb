require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    specify { is_expected.to validate_presence_of(:firstname) }
    specify { is_expected.to validate_presence_of(:lastname) }
    specify { is_expected.to validate_presence_of(:email) }
  end
end
