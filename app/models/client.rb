class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :orders
  has_many :addresses

  validates :last_name, presence: true, length: { in: 1..10}
  validates :first_name, presence: true, length: { in: 1..10}
  validates :last_name_kana, presence: true, length: { in: 2..10}
  validates :first_name_kana, presence: true, length: { in: 2..10}
  validates :email, presence: true, length: { in: 5..50}
  validates :address, presence: true, length: { in: 5..50}
  validates :post_code, presence: true, length: { in: 2..10}
  validates :telephone, presence: true, length: { in: 2..15}

end
