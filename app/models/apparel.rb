class Apparel < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON # For SQLite
  belongs_to :user, optional: true
  has_many :line_items, dependent: :destroy
  before_destroy :not_referenced_by_any_line_item

  validates :title, :description, :gender, :style, :price, :image, presence: true
  validates :title, length: { maximum: 140 }
  validates :price, numericality: { only_integer: true }, length: { maximum: 140}

  GENDERS = %w[Male Female Unisex]
  STYLES  = %w[T-shirt Hoodie Longsleeve Jacket Accessory]

private
  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
