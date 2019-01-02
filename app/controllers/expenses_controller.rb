class ExpensesController < ApplicationController
  before_action :authenticate_user!
  def index
    @expenses = Expense.where(user_id: current_user.id).order("date DESC")
  end
end
