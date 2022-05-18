class Product < ApplicationRecord
    belongs_to :user                    #for connection between Seller & Products
    has_many :orders, dependent: :destroy                    #for connection between Orders & Product
    has_many :users, through: :orders    #for connection between Product & Customer
    belongs_to :product_category        #for connection between Category & Products

    has_one_attached :image

end
