class AppliedJob < ApplicationRecord
	belongs_to :user
	belongs_to :job
	#belongs_to :cart
	has_many :job_items

	def add_job(job_params)
		AppliedJob.applied 
		
		current_user.applied_jobs.where(status: :applied)

		current_item = job_items.find_by(job_id: job_params[:job][:job_id])

	if current_item
		current_item.quantity += job_params[:job][:quantity].to_i
		current_item.save
	else
		new_item = applied_job_items.create(job_id: job_params[:job][:job_id], quantity: job_params[:job][:quantity],
		applied_job_id: self.id)
	end
	 new_item
 end
end
