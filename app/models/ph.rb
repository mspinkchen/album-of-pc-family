class Ph < ApplicationRecord
  mount_uploader :file_location, PhImageUploader
  validates_presence_of :title, :date, :description, :file_location
end
