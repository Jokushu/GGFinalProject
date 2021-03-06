class Menu < ApplicationRecord
	has_many :categories_menus
	has_many :categories, through: :categories_menus

	has_many :menus_orders
	has_many :orders, through: :menus_orders

	validates :name, presence: true, uniqueness: true
	validates :description, presence: true, length: { maximum: 150,
    too_long: "%{count} characters is the maximum allowed" }
	validates :price, numericality: { greater_than_or_equal_to: 0.01}
end
