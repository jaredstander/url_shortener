class Url < ActiveRecord::Base
  # Remember to create a migration!
  validates :long_url, presence: true, format: { with: /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/, on: :create }
end

test_url = Url.new(:long_url => "htp://something")
test_url.valid?
