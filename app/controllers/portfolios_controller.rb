class PortfoliosController < ApplicationController
  def index #good for listing out the number of items, also, most things need an index.
    @portfolio_items = Portfolio.all
    #the above allows us to make the portfolio items avaialable to view.
    
  end
end
