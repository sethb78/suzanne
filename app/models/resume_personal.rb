class ResumePersonal < ActiveRecord::Base

validates :name, uniqueness: true

end
