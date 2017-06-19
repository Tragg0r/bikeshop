FactoryGirl.define do

  sequence(:id) { |n| "#{n}" }

  factory :product do
    name "Generated shoe"
    color "blue"
    image_url "https://www.gimp.org/tutorials/Blur_Overlays/before.jpg"
    price "555"
    id
  end
end
