class Apparel < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON # For SQLite
  belongs_to :user, optional: true
  has_many :line_items, dependent: :destroy
  before_destroy :not_in_cart

  validates :title, :description, :gender, :style, :price, :image, presence: true
  validates :title, length: { maximum: 140 }
  validates :price, numericality: { only_integer: true }, length: { maximum: 140}

  GENDERS = %w[Male Female Unisex]
  STYLES  = %w[T-shirt Hoodie Longsleeve Accessory]

private
  def not_in_cart
    errors.add(:base, "Line items present") unless line_items.empty?
  end
end
