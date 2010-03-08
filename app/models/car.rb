class Car < ActiveRecord::Base
  ajaxful_rateable :dimensions => [:speed, :beauty, :price], :allow_update => true
end
