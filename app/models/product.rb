class Product < ApplicationRecord

  validates :description, presence: true
  validates :name, :image_url, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..1000 }
  
  def is_discounted?
    if price <= 10
      true
    else
      false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
