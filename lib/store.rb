# class MyValidator<ActiveModel::Validator
#   def validate(record)
#     unless record.womens_apparel||record.mens_apparel
#       record.errors.add , "Stores must carry at least one of the men's or women's apparel"
#     end
#   end
# end
class Store < ActiveRecord::Base
  validate :check_apparel_empty
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,numericality: { only_integer: true,greater_than_or_equal_to:0 }
  has_many :employees
  def check_apparel_empty
    unless womens_apparel||mens_apparel 
      errors.add(:womens_apparel,"Stores must carry at least one of the men's or women's apparel!")
    end
  end
end
