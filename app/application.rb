class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..10)
    num_2 = Kernel.rand(1..10)
    num_3 = Kernel.rand(1..10)
    num_4 = Kernel.rand(1..10)
    resp.write "#{num_1}\u{2660}|"
    resp.write "#{num_2}\u{2665}|"
    resp.write "#{num_3}\u{2666}|"
    resp.write "#{num_4}\u{2663}"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end