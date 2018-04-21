class Bike < ApplicationRecord
    scope :sort, lambda{order("bikes.price ASC")}
end
