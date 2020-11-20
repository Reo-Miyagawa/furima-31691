require 'rails_helper'

RSpec.describe OrderForm, type: :model do
  before do
    @order_form = FactoryBot.build(:order_form)
  end


  describe '購入機能' do
    context '購入機能がうまくいくとき' do
      it 'post_code、prefectures_id、municipality、address、building_name、phone_numberが存在すれば登録できる' do
        expect(@order_form).to be_valid
      end
    end

    context '購入機能がうまくいかないとき' do
      it 'post_codeが空だと登録できない' do
        @order_form.post_code = nil
        @order_form.valid?
        expect(@order_form.errors.full_messages).to include("Post code can't be blank")
      end
      it 'prefectures_idが空だと登録できない' do
        @order_form.prefectures_id = ""
        @order_form.valid?
        expect(@order_form.errors.full_messages).to include("Prefectures select")
      end
      it 'addressが空では登録できない' do
        @order_form.address = ""
        @order_form.valid?
        expect(@order_form.errors.full_messages).to include("Address can't be blank")
      end
      it 'phone_numberが空だと登録できない' do
        @order_form.phone_number = ""
        @order_form.valid?
        expect(@order_form.errors.full_messages).to include("Phone number can't be blank")
      end
      it 'post_codeにはハイフンがないと登録できない' do
        @order_form.post_code = "1234567"
        @order_form.valid?
        expect(@order_form.errors.full_messages).to include("Post code code Input correctly")
      end
      it 'phone_numberにはハイフンは不要で、11桁以内でないと登録できない' do
        @order_form.phone_number = "090-1234-5678"
        @order_form.valid?
        expect(@order_form.errors.full_messages).to include("Phone number number Input only number")
      end
    end
  end
end
