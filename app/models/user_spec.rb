require 'rails_helper'

describe User do
  describe '#create' do
    
    it "nicknameがない場合は登録できないこと" do
      user = build(:user, nickname: "")
      user.valid?
      except(user.errors[:nickname]).to include("can't be blank")
    end

    it "emailが無い場合は登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      except(user.errors[:email]).to include("can't be blank")
    end

  end
end