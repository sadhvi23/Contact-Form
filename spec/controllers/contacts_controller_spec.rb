# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe 'create' do
    it 'successfully creates a new user' do
      Contact.create(first_name: 'Alley',
                     last_name: 'Jones',
                     email: 'alley.jones@test.com',
                     phone_number: '+1 85678909',
                     message: 'Hi Testing',
                     locale: 'en')

      expect(Contact.last.first_name).to eq('Alley')
    end
  end
end
