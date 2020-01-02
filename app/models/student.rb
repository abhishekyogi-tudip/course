class Student < ApplicationRecord
  has_many :enrollments
  has_many :cources, through: :enrollments
  has_attached_file :image, styles: {small: "100x100>", medium: "600x600>", thumb: ["32x32#", :png]},default_url: "/student/image/.url(.:format)"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  #validates :name, presence: true
  #validates :name, uniqueness: true


end
