class AddJobIdToAppliedJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :applied_jobs, :job_id, :integer
  end
end
