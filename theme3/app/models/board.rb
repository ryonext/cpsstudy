class Board < ActiveRecord::Base
  attr_accessible :comment, :date, :name, :title
end
