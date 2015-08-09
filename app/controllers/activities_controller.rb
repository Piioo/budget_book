class ActivitiesController < ApplicationController
  def create
    @budget   = Budget.find(params[:budget_id])
    kind      = Kind.find(params[:activity][:kind])
    @activity = @budget.activities.new(activity_params)
    @activity.kind = kind
    if @activity.save
      redirect_to :back
    else
      render 'budgets/show'
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:amount, :date, :description)
  end
end
