class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  get "/rents" do
    rents = Rent.all.order(:created_at)
    rents.to_json
  end
    
  get '/rents/:id' do
    rent = Rent.find(params[:id])
    rent.to_json
  end

  post "/rents" do
    rent = Rent.create(title: params[:title], 
      region: params[:region], 
      address: params[:address], 
      room: params[:room], 
      currency: params[:currency],
       price: params[:price],
       image_url: params[:image_url]
      )
    rent.to_json
  end
  
  patch "/rents/:id" do
    rent = Rent.find(params[:id])
    rent.update(title: params[:title], 
      region: params[:region], 
      address: params[:address], 
      room: params[:room], 
      currency: params[:currency],
       price: params[:price],
       image_url: params[:image_url]
      )
    rent.to_json
  end
  
  delete "/rents/:id" do
    rent = Rent.find(params[:id])
    rent.destroy(title: params[:title], 
      region: params[:region], 
      address: params[:address], 
      room: params[:room], 
      currency: params[:currency],
       price: params[:price],
       image_url: params[:image_url]
      )
    rent.to_json

  end

  get "/review" do
    reviews = Review.all.order(:created_at)
    reviews.to_json
  end
    
  get '/reviews/:username' do
    review = Review.find(params[:username])
    review.to_json
  end

  post "/reviews" do
    review = Review.create(username: params[:username], 
      body: params[:body]) 
    review.to_json
  end
  
  patch "/reviews/:username" do
    review = Review.find(params[:username])
    review.update(username: params[:username])
      
    rent.to_json
  end
  
  delete "/reviews/:username" do
    review = Review.find(params[:username])
    review.destroy(username: params[:username]
      
      )
    rent.to_json

    end
end
