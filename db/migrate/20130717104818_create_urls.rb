class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |u|
      u.string :long_url
      u.string :short_url
      u.integer :counter
      u.timestamps
    end
  end
end
