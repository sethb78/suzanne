class AdminUser < ActiveRecord::Base
devise :database_authenticatable, :registerable, :confirmable, :recoverable, :stretches => 20
end
