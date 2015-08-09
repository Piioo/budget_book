class HomeController < ApplicationController
  def index
    @budgets = current_user.budgets
  end
end
