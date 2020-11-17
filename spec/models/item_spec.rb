require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '商品出品ががうまくいくとき' do
      it "name、explanation、category_id、status_id、shipping_fee_burden_id、shipping_area_id、days_to_ship_id、price、imageが存在すれば登録できる" do
        expect(@item).to be_valid
      end
    end
    
    context '商品出品機能がうまくいかないとき' do
      it "imageが空だと登録できない" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "nameが空だと登録できない" do
        @item.name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it "explanationが空では登録できない" do
        @item.explanation = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end
      it "priceが空だと登録できない" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end



      it "category_idが空では登録できない" do
        @item.category_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Category select")
      end
      it "status_idが空だと登録できない" do
        @item.status_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Status select")
      end
      it "shipping_fee_burden_idが空だと登録できない" do
        @item.shipping_fee_burden_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping fee burden select")
      end
      it "shipping_area_idが空だと登録できない" do
        @item.shipping_area_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping area select")
      end
      it "days_to_ship_idが空だと登録できない" do
        @item.days_to_ship_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Days to ship select")
      end
      it "priceは半角数字のみ保存可能" do
        @item.price = "!１あ"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price Half-width number")
      end
    end
  end
end
