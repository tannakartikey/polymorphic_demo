class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true, optional: true
  mount_uploader :filename, ImageUploader
  mount_uploaders :files, ImageUploader
end
