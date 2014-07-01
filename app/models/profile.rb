class Profile < ActiveRecord::Base
  has_one :user
  accepts_nested_attributes_for :user
  delegate :name, :email, :gender, to: :user
end
