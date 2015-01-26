class Pint < ActiveRecord::Base
  validates :address, :photo, :note, presence: true

  mount_uploader :photo, PhotoUploader

  belongs_to :user
end
