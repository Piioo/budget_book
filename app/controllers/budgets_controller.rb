class BudgetsController < ApplicationController
  def new
    @budget = Budget.new(user: current_user)
  end

  def create
    @budget = Budget.new(budget_params)
    @budget.user = current_user
    if @budget.save
      redirect_to @budget
    else
      render :new
    end
  end

  def show
    @budget = Budget.find(params[:id])
    @activity = Activity.new
  end

  private

  def budget_params
    params.require(:budget).permit(:name)
  end
end
