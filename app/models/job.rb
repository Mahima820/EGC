class Job < ApplicationRecord
	has_many :applied_job, dependent: :destroy
	before_destroy :ensure_not_referenced_by_any_applied_job
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"} 
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	# private

	# 	def ensure_not_referenced_by_any_applied_job
	# 		unless applied_jobs.empty?
	# 			errors.add(:base, 'Applied Jobs Present')
	# 			throw :abort
	# 		   end
	# 		  end

	end

