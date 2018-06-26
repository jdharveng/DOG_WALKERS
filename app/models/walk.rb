class Walk < ApplicationRecord
  belongs_to :dogwalker
  belongs_to :dog
end
