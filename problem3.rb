require "httparty"
response = HTTParty.get('http://worldtimeapi.org/api/timezone/Asia/Singapore')
data = JSON.parse(response.body)

def time_zone(data)

  x = data['datetime']
  date = x.match(/(\d{4}-[0-1][0-9]-[0-3][0-9])/)
  time1 = x.match(/\d{2}:\d{2}:\d{2}/)
  puts "The current time in #{data['timezone']} is #{date} #{time1}"
end

time_zone(data)
