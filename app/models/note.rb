# frozen_string_literal: true

class Note < ApplicationRecord
  belongs_to :user

  scope :search, ->(term) {
    where("LOWER(message) LIKE ?", "%#{term.downcase}%")
  }

  delegate :name, to: :user
end
