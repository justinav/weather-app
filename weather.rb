#weather app

require 'weather_underground'

w = WeatherUnderground::Base.new('1d97fea0f7ff1935')

puts "Need the weather? Type your zip code."
$zip = gets.chomp
w = w.forecast($zip)
$location = w['current_observation']['display_location']['full']
w = w['forecast']
w = w['txt_forecast']
w = w['forecastday']

$today = w[0]
$today_forecast = $today['fcttext']

$tonight = w[1]
$tonight_forecast = $tonight['fcttext']

$tomorrow = w[2]
$tomorrow_forecast = $tomorrow['fcttext']

$tomorrow_night = w[3]
$tomorrow_night_forecast = $tomorrow_night['fcttext']

$next_day = w[4]
$next_day_weekday = $next_day['title']
$next_day_forecast = $next_day['fcttext']

$next_night = w[5]
$next_night_weekday = $next_night['title']
$next_night_forecast = $next_night['fcttext']

$day_four = w[6]
$day_four_weekday = $day_four['title']
$day_four_forecast = $day_four['fcttext']

$night_four = w[7]
$night_four_weekday = $night_four['title']
$night_four_forecast = $night_four['fcttext']

def get_full_forecast
	puts "This is the forecast for #{$location}."
	puts "Today: #{$today_forecast}"
	puts "Tonight: #{$tonight_forecast}"
	puts "Tomorrow: #{$tomorrow_forecast}"
	puts "Tomorrow Night: #{$tomorrow_night_forecast}"
	puts "#{$next_day_weekday}: #{$next_day_forecast}"
	puts "#{$next_night_weekday}: #{$next_night_forecast}"
	puts "#{$day_four_weekday}: #{$day_four_forecast}"
	puts "#{$night_four_weekday}: #{$night_four_forecast}"
end

puts "This is the forecast for #{$location}."
puts "Today: #{$today_forecast}"
puts "Would you like to know the full forecast for the next four days? Please enter y or n."
answer = gets.chomp
if (answer == 'y')
	get_full_forecast
else
	puts "Enjoy your day!"
end
