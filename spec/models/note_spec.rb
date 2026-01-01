# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Note, type: :model do
  it "delegates name to the user who created it" do
    user = FactoryBot.create(:user, first_name: "Fale", last_name: "User")
    note = Note.new(user: user)
    expect(note.name).to eq("Fale User")
  end
end
