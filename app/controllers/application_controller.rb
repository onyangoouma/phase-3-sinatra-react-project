class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/rents" do
    rents = Rent.all.order(:created_at)
    rents.to_json
  end

end
