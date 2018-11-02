class PortfoliosController < ApplicationController
  def index #good for listing out the number of items, also, most things need an index.
    @portfolio_items = Portfolio.all
    #the above allows us to make the portfolio items avaialable to view.
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end


  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(  params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully created. You're very talented." }
      else
        format.html { render :new }
      end
    end
  end

def edit
  @portfolio_item = Portfolio.find(params[:id])
  #the route is expecting something called 'id' inside of its params, so give it to it.
end

def update

  @portfolio_item = Portfolio.find(params[:id])
  respond_to do |format|
    if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
      format.html { redirect_to portfolios_path, notice: 'Your portfolio edition was edited.. get it?' }
      # format.json { render :show, status: :ok, location: @portfolio_item }
    else
      format.html { render :edit }
      # format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  #perform the lookup
    @portfolio_item = Portfolio.find(params[:id])
    #destroy the record
    @portfolio_item.destroy

  #respond to is just saying what you want to happen assuming the destruction was successful.
  respond_to do |format|
    format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully destroyed.' }
  end
end

end
