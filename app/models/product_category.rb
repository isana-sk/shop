class ProductCategory < ApplicationRecord
    validates :name, presence: true
    belongs_to :category, class_name: :ProductCategory, optional: true
    has_many :subcategories, class_name: :ProductCategory, foreign_key: :category_id, dependent: :destroy
    has_many :products, dependent: :destroy
end
    