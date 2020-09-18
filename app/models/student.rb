class Student < ApplicationRecord
  belongs_to :teacher

  class Type
    DEFAULT = 0
    TA = 1
  end
end
