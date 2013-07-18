class Url < ActiveRecord::Base
  # Remember to create a migration!
  validates :long_url, presence: true
end

