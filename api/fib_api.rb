require 'grape'

class FibAPI < Grape::API
  format :json

  namespace :fib do

    get ':steps' do
      seq = [0, 1]
      for i in 0...params[:steps].to_i do
        seq.push seq[-1] + seq[-2]
      end
      seq
    end
  end
end