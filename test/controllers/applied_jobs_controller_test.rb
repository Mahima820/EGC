require 'test_helper'

class AppliedJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applied_job = applied_jobs(:one)
  end

  test "should get index" do
    get applied_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_applied_job_url
    assert_response :success
  end

  test "should create applied_job" do
    assert_difference('AppliedJob.count') do
      post applied_jobs_url, params: { applied_job: { cover_letter: @applied_job.cover_letter, resume: @applied_job.resume, text: @applied_job.text } }
    end

    assert_redirected_to applied_job_url(AppliedJob.last)
  end

  test "should show applied_job" do
    get applied_job_url(@applied_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_applied_job_url(@applied_job)
    assert_response :success
  end

  test "should update applied_job" do
    patch applied_job_url(@applied_job), params: { applied_job: { cover_letter: @applied_job.cover_letter, resume: @applied_job.resume, text: @applied_job.text } }
    assert_redirected_to applied_job_url(@applied_job)
  end

  test "should destroy applied_job" do
    assert_difference('AppliedJob.count', -1) do
      delete applied_job_url(@applied_job)
    end

    assert_redirected_to applied_jobs_url
  end
end
