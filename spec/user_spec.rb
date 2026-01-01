# frozen_string_literal: true

require "rails_helper"

RSpec.describe User do
  it 'is invalid without a first name' do
        user = User.new(first_name: nil)
        user.valid?
        expect(user.errors[:first_name]).to include("can't be blank")
  end

  it 'is invalid with a duplicate name' do
    user = User.new(first_name: 'Taro', last_name: 'Yamada')
    expect(user.name).to eq "Taro Yamada"
  end
end