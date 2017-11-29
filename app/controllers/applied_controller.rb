class AppliedController < ApplicationController

  def index
    @applied = applied
  end

  def add
    if @applied.has_key?(params[:id])
      @applied[params[:id]] += 1
    else
      @applied[params[:id]] = 1
    end

    redirect_back(fallback_location: applied_jobs_path)
  end
end