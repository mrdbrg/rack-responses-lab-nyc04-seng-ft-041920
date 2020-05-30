class Application

  def call(env)
    # Rack::Response, for convenient generation of HTTP replies and cookie handling.
    resp = Rack::Response.new
    current_time = Time.now

    resp.write "\n\nThe time is #{current_time.hour}:#{current_time.min}\n\n"

    if current_time.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end