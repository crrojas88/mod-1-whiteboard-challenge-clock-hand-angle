require 'pry'

def clock_angle(time)
    time_array = parse_time(time)
    hour = time_array[0]
    min = time_array[1]
    min_angle =  min * 6
    hour_angle = hour % 12 * 30 + min.to_f/2
    if hour_angle < min_angle
        hour_angle += 360
    end
    
    hour_angle - min_angle
   
end

def parse_time(time)
    min = time[time.length - 2, time.length]
    hour = time[0, time.length - 3]
     [hour.to_i, min.to_i]
end

# parse_time("3:15")
# #clock_angle(3:15)