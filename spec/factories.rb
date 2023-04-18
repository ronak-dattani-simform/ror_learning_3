FactoryBot.define do
  
    factory :product do
      product_name { Faker::Commerce.product_name }
      price { Faker::Commerce.price(range: 0..100) }
      description { Faker::Lorem.sentence }
    end

    factory(:user) do
        email { Faker::Internet.email }
        password { Faker::Internet.password }   
    end
  end
  