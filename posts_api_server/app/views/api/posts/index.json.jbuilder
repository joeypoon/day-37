json.array! @posts do |post|

  json.(post, :id, :title, :author, :content)

end
