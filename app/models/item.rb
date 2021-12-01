class Item < ApplicationRecord   
    has_many :join_table_items_carts, dependent: :nullify

    validates :title, presence: true, length: { minimum: 3, maximum: 20}
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
    validates :price, presence: true, :inclusion => { in: 1..1000, message: "Prix entre 1 et 1000" }
    validates :image_url, presence: true
end
