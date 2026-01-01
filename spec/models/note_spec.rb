# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Note, type: :model do
  it "delegates name to the user who created it" do
    user = instance_double('User', name: 'Fake User')
    note = Note.new
    allow(note).to receive(:user).and_return(user)
    expect(note.name).to eq('Fake User')
  end
end
