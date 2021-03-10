def timeConversion(s)
    hour_time = s.split(//)  # we convert the string to an array
    if hour_time[8] == "P" # We check if  our hours is PM or AM
        if hour_time[0,2].join().to_i == 12 #we need to check if the input hour is 12 
            return hour_time[0,8].join() 
        end
        converted_hours = hour_time[0,2].join().to_i + 12 # convert to military hour
        converted_hours.to_s + hour_time[2,6].join()
    elsif hour_time[8] == "A"  # if is AM we need just return  the same input hour without "AM", but  firstly we need to check if the input hour is 12 AM
        if hour_time[0,2].join().to_i == 12
            return "00" + hour_time[2,6].join()
        end
        hour_time[0,8].join()
    end
end
timeConversion("12:00:00AM")