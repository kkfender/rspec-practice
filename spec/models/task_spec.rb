# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:project) { create(:project) }
  let(:task) { create(:task, project: project) }
  let(:invalid_task) { build(:task, project: nil) }
  let(:invalid_task_name) { build(:task, name: nil) }
  # プロジェクトと名前があれば有効な状態であること
  it "is valid with a project and name" do
    expect(task).to be_valid
  end

  # プロジェクトがなければ無効な状態であること
  it "is invalid without a project" do
    invalid_task.valid?
    expect(invalid_task.errors[:project]).to include("must exist")
  end

  # 名前がなければ無効な状態であること
  it "is invalid without a name" do
    invalid_task_name.valid?
    expect(invalid_task_name.errors[:name]).to include("can't be blank")
  end
end

