class Profile < ActiveRecord::Base
  has_one :user
  accepts_nested_attributes_for :user
  delegate :name, :email, :gender, to: :user

  has_attached_file :photo, styles: { thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
