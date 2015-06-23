require 'http'

posts = JSON.parse(Http.get("http://127.0.0.1:3000/posts.json"))

puts "Found #{posts.count} posts"

post = JSON.parse(Http.post("http://127.0.0.1:3000/posts.json", json: {post: {title: "Yo"}}))
puts "Created post with id: #{post["id"]}"

puts "Setting title to Macbook"

post = JSON.parse(Http.put("http://127.0.0.1:3000/posts/#{post["id"]}.json", json: {post: {title: "MacBook"}}))

post= JSON.parse(Http.get("http://127.0.0.1:3000/posts/#{post["id"]}.json"))

puts "Title is now #{post["title"]}"

puts "Deleting..."

posts = JSON.parse(Http.get("http://127.0.0.1:3000/posts.json"))
posts.each do |post|
  Http.delete("http://127.0.0.1:3000/posts/#{post["id"]}")
end

posts = JSON.parse(Http.get("http://127.0.0.1:3000/posts.json"))

puts "Found #{posts.count} posts"
