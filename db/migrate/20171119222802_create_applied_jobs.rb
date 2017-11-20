class CreateAppliedJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :applied_jobs do |t|
      t.text :resume
      t.string :cover_letter
      t.string :text

      t.timestamps
    end
  end
end
