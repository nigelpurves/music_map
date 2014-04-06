class Place < ActiveRecord::Base
  attr_accessible :address, :name, :postcode, :location
  
  self.rgeo_factory_generator = RGeo::Geos.factory_generator(:srid => 4326)
  
  delegate :latitude, :to => :location, :allow_nil => true
  delegate :longitude, :to => :location, :allow_nil => true

  validates :latitude, :presence => true, :numericality => { :greater_than_or_equal_to => -90, :less_than_or_equal_to => 90 }
  validates :longitude, :presence => true, :numericality => { :greater_than_or_equal_to => -180, :less_than_or_equal_to => 180 }
  
  has_many :events
  
end
