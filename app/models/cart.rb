class Cart < ApplicationRecord
	has_many :applied_jobs, dependent: :destroy
end
