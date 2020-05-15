def valid_url?(url)
  (url[0, 7] == "http://" || url[0, 8] == "https://") && url.include?(".")
end

urls = ["https://mail.google.com", "http://google.com", "https://youtubecom", "google.com"]
urls.each do |url|
  print url + " : "
  puts valid_url? url
end
