class Product < ApplicationRecord

  # validates :description, presence: true
  # validates :name, uniqueness: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 10..1000 }

  # def supplier
  #   #trying to return the instance of what product this supplier belongs to
  #   Supplier.find_by(id: supplier_id)
  # end

  belongs_to :supplier
  has_many :images
  
  def is_discounted?
    if price < 60
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
