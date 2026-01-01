# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Note, type: :model do
  before do
    @user = User.create(
      first_name: 'Taro', 
      last_name: 'Yamada',
      )

    @project = @user.projects.create(
      name: 'Test Project'
    )

  end


end
