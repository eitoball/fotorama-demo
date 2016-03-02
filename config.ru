use Rack::Static, urls: ['/images'], root: 'public'

runner = proc do |env|
  [
    200,
    {'Content-Type' => 'text/html'},
    File.open('public/index.html', 'r')
  ]
end

run runner
