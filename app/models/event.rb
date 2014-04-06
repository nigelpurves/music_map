class Event < ActiveRecord::Base
  attr_accessible :y1940s, :y1950s, :y1960s, :y1970s, :y1980s, :y1990s, :y2000s, :y2010s, :description, :headline, :image_url, :place_id, :date
  
  validates_presence_of :place_id
  
  belongs_to :place
end
