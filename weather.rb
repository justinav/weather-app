#weather app

require 'weather_underground'

w = WeatherUnderground::Base.new('1d97fea0f7ff1935')

puts "Need the weather? Type your zip code."
$zip = gets.chomp
w = w.forecast($zip)
location = w['current_observation']['display_location']['full']
w = w['forecast']
w = w['txt_forecast']
w = w['forecastday']

today = w[0]
today_forecast = today['fcttext']

tomorrow = w[2]
tomorrow_forecast = tomorrow['fcttext']

next_day = w[4]
next_day_weekday = next_day['title']
next_day_forecast = next_day['fcttext']

day_four = w[6]
day_four_weekday = day_four['title']
day_four_forecast = day_four['fcttext']

puts "This is the forecast for #{location}."
puts "Today: #{today_forecast}"
puts "Tomorrow: #{tomorrow_forecast}"
puts "#{next_day_weekday}: #{next_day_forecast}"
puts "#{day_four_weekday}: #{day_four_forecast}"
