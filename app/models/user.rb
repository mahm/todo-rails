class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable, :recoverable, :rememberable
  devise :database_authenticatable, :trackable, :validatable

  has_many :tasks, dependent: :destroy
end
