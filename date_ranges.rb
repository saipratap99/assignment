require "date"

def date_ranges(string)
  case string
  when "yesterday"
    [Date.today.next_day.to_s, Date.today.next_day.to_s]
  when "last month"
    start_date = Date.today.prev_month - Date.today.day + 1
    end_date = Date.today - Date.today.day
    [start_date.to_s, end_date.to_s]
  when "next month"
    start_date = Date.today.next_month - Date.today.day + 1
    end_date = Date.today.next_month + Date.today.day
    [start_date.to_s, end_date.to_s]
  else
    "Invalid"
  end
end

date = Date.today
print date_ranges "last month"
