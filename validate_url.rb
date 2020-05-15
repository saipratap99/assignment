def valid_url?(url)
  (url[0, 7] == "http://" || url[0, 8] == "https://") && url.include?(".")
end

url = "https://mail.google.com"
puts valid_url? url
