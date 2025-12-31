# frozen_string_literal: true

require_relative "../lib/example"

RSpec.describe Example do
  describe "#initialize" do
    it "名前を受け取って初期化できる" do
      example = Example.new("Taro")
      expect(example).to be_an_instance_of(Example)
    end
  end

  describe "#greet" do
    it "挨拶メッセージを返す" do
      example = Example.new("Taro")
      expect(example.greet).to eq("Hello, Taro!")
    end
  end

  describe "#add" do
    it "2つの数を足し算できる" do
      example = Example.new("Test")
      expect(example.add(2, 3)).to eq(5)
    end

    it "負の数も扱える" do
      example = Example.new("Test")
      expect(example.add(-1, 1)).to eq(0)
    end
  end
end

