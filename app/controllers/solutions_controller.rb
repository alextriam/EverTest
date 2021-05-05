class SolutionsController < ApplicationController
  before_action :set_solution, only: [:update]
  def index
    @solutions = Solution.all
    respond_to do |format|
        format.html { render 'index' }
        format.json { @solutions }
    end
  end

  def update
    if @solution.update(solution_params)
      redirect_to root_path, notice: "Розвязання збережено, дякуємо!"
    else
      redirect_to root_path, notice: "Заповніть хочь одне поле!"
    end
  end

  def destroy
  end

  def show
  end

  def create
  end

  private

  def set_solution
    @solution = Solution.find(params[:id])
  end

  def solution_params
    params.require(:solution).permit(:link, :answer)
  end
end
