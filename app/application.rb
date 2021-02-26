class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World "
    resp.finish

    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)

    if num_1 == num_2 && num_2 == num_3
      nums = num_1, num_2, num_3
      resp.write "You Win #{nums}"
    else 
      nums = num_1, num_2, num_3
      resp.write "You Lose #{nums}" 
    end
    resp.finish
  end

end
