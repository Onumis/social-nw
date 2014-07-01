class User < ActiveRecord::Base
  extend Enumerize
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :trackable, :rememberable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  belongs_to :profile

  after_create :create_profile

  enumerize :gender, in: [:male, :female]

end
