class Doctor < ApplicationRecord
	validates :firstname, :lastname, presence: :true 
end
