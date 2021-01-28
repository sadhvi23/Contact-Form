# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'creation' do
    it 'can be created' do
      user = Contact.create(first_name: 'Alley',
                            last_name: 'Jones',
                            email: 'alley.jones@test.com',
                            phone_number: '+1 85678909',
                            message: 'Hi Testing',
                            locale: 'en')

      expect(user).to be_valid
    end
  end
end
