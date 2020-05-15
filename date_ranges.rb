require "date"

def date_ranges(string)
  case string
  when "yesterday"
    [Date.today.next_day.to_s, Date.today.next_day.to_s]
  when "last month"
    start_date = Date.today.prev_month - Date.today.day + 1
    end_date = Date.today - Date.today.day
    [start_date.to_s, end_date.to_s]
  when "this month"
    start_date = Date.today - Date.today.day + 1
    end_date = Date.today - 1
    [start_date.to_s, end_date.to_s]
  when "last week"
    date = Date.today
    until date.sunday?
      date = date - 1
    end
    start_date = date - 6
    end_date = date
    [start_date.to_s, end_date.to_s]
  when "this week"
    date = Date.today
    until date.monday?
      date = date - 1
    end
    start_date = date
    end_date = Date.today - 1
    [start_date.to_s, end_date.to_s]
  else
    "Invalid"
  end
end

date = Date.today
puts "#{date} --> Today"
strings = ["this week", "last week", "this month", "last month", "yesterday"]

strings.each do |string|
  print date_ranges string
  puts " --> " + string.capitalize
end
