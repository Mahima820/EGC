class AddUserIdToAppliedJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :applied_jobs, :user_id, :integer
  end
end
