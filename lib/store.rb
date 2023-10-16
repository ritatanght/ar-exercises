class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 5 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :at_least_one_apparel

  def at_least_one_apparel
    if !(mens_apparel || womens_apparel)
      errors.add(:mens_apparel, "must carry at least one of the men's or women's apparel") 
      errors.add(:womens_apparel, "must carry at least one of the men's or women's apparel") 
    end
  end
end
