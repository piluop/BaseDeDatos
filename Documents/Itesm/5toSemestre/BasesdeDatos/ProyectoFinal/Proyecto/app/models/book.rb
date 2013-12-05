class Book < ActiveRecord::Base
  attr_accessible :isbn, :title, :year
end
