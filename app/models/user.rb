class User < ApplicationRecord
  has_one :cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        # validates :firstname, presence: true, length: {maximum: 20}
       #  validates :lastname, presence: true, length: {maximum: 20}

end
