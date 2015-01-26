class Pint < ActiveRecord::Base
  validates :photo, :note, presence: true

  mount_uploader :photo, PhotoUploader

  belongs_to :user
end
