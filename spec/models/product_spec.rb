require 'rails_helper'

describe Product do

  context "when the product has comments" do
    before do
      @product = Product.create!(name: "test bike", price: 699, color: "red", image_url: "test.jpg")
      @user = User.create!(email: "d.schmidt86@outlook.com", password: "123456")
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "fine")
      @product.comments.create!(rating: 5, user: @user, body: "not good!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  context "is not valid" do
    before do
	     @product = Product.new(description: "tasty bike")
    end

    it "is not valid" do
      expect(@product).not_to be_valid
    end
  end

end
