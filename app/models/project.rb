class Project < ApplicationRecord
    #this was added in class, check for accuracy
    validates_presence_of :title, :description
end
