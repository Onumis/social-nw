class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :trackable, :rememberable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  belongs_to :profile

  after_create :create_profile
end
