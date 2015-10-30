require "sinatra"

class HipPlayer < Sinatra::Base
  get "/" do
    "This is a Hip Player, YO!"
  end

  get "/speak" do
    "I am speaking"
  end
end
