class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }, inclusion: { in: 40..200 }
  validates :store_id, presence:true

  before_create :create_random_password

  private
  def create_random_password
    self.password = [*('A'..'Z'), *('a'..'z'), *('0'..'9')].sample(8).join
  end
end

