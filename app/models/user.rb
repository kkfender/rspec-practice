# frozen_string_literal: true

class User < ApplicationRecord
  validates :first_name, presence: true

  def name
    [first_name, last_name].join(' ')
  end
end