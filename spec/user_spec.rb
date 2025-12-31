# frozen_string_literal: true

require "rails_helper"

RSpec.describe User do
  describe "#greet" do
  let(:name) { "Taro" }
  let(:user) { User.new(name: name, age: age) }

  subject { user.greet }
    context "年齢が12歳以下の場合" do
      let(:age) { 10 }
      it '年齢が12歳以下の場合は「ぼくは○○だよ。」と返す' do
        expect(subject).to eq("ぼくはTaroだよ。")
      end
    end  

    context "年齢が13歳以上の場合" do
      let(:age) { 13 }
      it '年齢が13歳以上の場合は「僕は○○です。」と返す' do
        expect(subject).to eq("僕はTaroです。")
      end
    end
  end
end