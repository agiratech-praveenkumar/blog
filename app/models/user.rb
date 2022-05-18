class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :jwt_authenticatable,

  has_many :posts
  has_many :categories

  validates :username, uniqueness: true

  private

  def email_required?
    false
  end
end
