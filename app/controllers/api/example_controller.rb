class API::ExampleController < APIController
  def random_number
    render json: { num: rand(1000) }
  end
end
