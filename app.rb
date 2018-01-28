require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name]
    @reversename.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number * @number
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    output = @phrase * @number
    output.to_s
  end

end
