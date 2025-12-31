# frozen_string_literal: true

require "rails_helper"

RSpec.describe "RSpecの練習" do
  describe "基本的なテスト" do
    it "1 + 1 は 2 になる" do
      expect(1 + 1).to eq(2)
    end

    it "文字列の結合ができる" do
      expect("Hello" + " " + "World").to eq("Hello World")
    end
  end

  describe "配列の操作" do
    it "配列に要素を追加できる" do
      array = [1, 2, 3]
      array << 4
      expect(array).to include(4)
      expect(array.length).to eq(4)
    end
  end
end

