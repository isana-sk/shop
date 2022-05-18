class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products, dependent: :destroy                    #for Seller & Products
  has_many :orders, dependent: :destroy                      #for Customer & Orders
  has_many :products, through: :orders  #for Customer & Orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
