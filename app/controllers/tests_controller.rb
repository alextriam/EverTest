class TestsController < ApplicationController

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def show
    @test = Test.find(params[:id])
    send_data @test.text, :filename => "#{ @test.kind }_test.txt"
  end

  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to root_path, notice: "Тестове завдання збережено"
    else
      render 'new'
    end
  end

  private

  def test_params
    params.require(:test).permit(:text, :kind, :level_id)
  end
end
