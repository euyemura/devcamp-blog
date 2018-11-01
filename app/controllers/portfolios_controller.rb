class PortfoliosController < ApplicationController
  def index #good for listing out the number of items, also, most things need an index.
    @portfolio_items = Portfolio.all
    #the above allows us to make the portfolio items avaialable to view.
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(  params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully created. You're very talented." }
        # format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        # format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

end
