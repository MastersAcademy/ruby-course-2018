class HelloWorld
  def call(env)
    content = File.read './app/index.html'
    [200, {"Content-Type" => "text/html"}, [content]]
  end
end

run HelloWorld.new