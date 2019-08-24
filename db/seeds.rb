# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LineItem.delete_all
Cart.delete_all
Apparel.delete_all
User.delete_all

user = User.new(
  :id                    => 2,
  :name                  => "Felix Kjellberg",
  :email                 => "kjellberg.f@example.com",
  :password              => "pewdiepie",
  :password_confirmation => "pewdiepie"
)
user.save!

Apparel.create!([{
  :title       => "Hamnkapten Travel Bag // PewDiePie",
  :description => "Note: LIMITED STOCK ONLY\n*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Accessory",
  :price       => "100",
  :image       => Rails.root.join("app/assets/images/seed/hamnkapten-travel-bag-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Hundred Mill Pins // PewDiePie",
  :description => "4-Pack of PewDiePie Pins\n*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Accessory",
  :price       => "25",
  :image       => Rails.root.join("app/assets/images/seed/hundred-mill-pins-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Hamnkapten // PewDiePie",
  :description => "Note: LIMITED STOCK ONLY\n*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Hoodie",
  :price       => "50",
  :image       => Rails.root.join("app/assets/images/seed/hamnkapten-hoodie-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Hamnkapten // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Longsleeve",
  :price       => "40",
  :image       => Rails.root.join("app/assets/images/seed/hamnkapten-longsleeve-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Big Brain // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Hoodie",
  :price       => "50",
  :image       => Rails.root.join("app/assets/images/seed/big-brain-hoodie-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Big Brain // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "T-shirt",
  :price       => "30",
  :image       => Rails.root.join("app/assets/images/seed/big-brain-tshirt-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Big Brain Anatomy // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Longsleeve",
  :price       => "40",
  :image       => Rails.root.join("app/assets/images/seed/big-brain-anatomy-longsleeve-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Big Brain Anatomy // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "T-shirt",
  :price       => "30",
  :image       => Rails.root.join("app/assets/images/seed/big-brain-anatomy-tshirt-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Hundred Mill Club // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Longsleeve",
  :price       => "40",
  :image       => Rails.root.join("app/assets/images/seed/hundred-mill-club-longsleeve-pewdiepie-red.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Hundred Mill Club // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "T-shirt",
  :price       => "30",
  :image       => Rails.root.join("app/assets/images/seed/hundred-mill-club-tshirt-pewdiepie-red.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Hundred Mill Club // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "Longsleeve",
  :price       => "40",
  :image       => Rails.root.join("app/assets/images/seed/hundred-mill-club-longsleeve-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Hundred Mill Club // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "T-shirt",
  :price       => "30",
  :image       => Rails.root.join("app/assets/images/seed/hundred-mill-club-tshirt-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Big Brain Logo // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "T-shirt",
  :price       => "30",
  :image       => Rails.root.join("app/assets/images/seed/big-brain-logo-tshirt-pewdiepie.jpg").open,
  :user_id     => user.id
},
{
  :title       => "Big Brain Logo // PewDiePie",
  :description => "*International Shipping Available*",
  :gender      => "Unisex",
  :style       => "T-shirt",
  :price       => "30",
  :image       => Rails.root.join("app/assets/images/seed/big-brain-logo-tshirt-pewdiepie-red.jpg").open,
  :user_id     => user.id
}
])