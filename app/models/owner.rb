class Owner < ActiveRecord::Base
  geocoded_by :full_address, :latitude  => :lat, :longitude => :lon # ActiveRecord

  validates_presence_of :city, :address, :province
  after_validation :geocode

  MUNICIPALLIES=(1..19).to_a
  LEVELS=%w(Gold Silver Bronze)

  def full_address
    [address, city, province, "Italy"].compact.join(', ')
  end

  def to_label
    "#{nome}"
  end

end
