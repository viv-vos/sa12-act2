require "httparty"
response = HTTParty.get('https://api.github.com/users/viv-vos/repos')
data = JSON.parse(response.body)

def starred_repo(data)
  max_star = data.max{ |x| x['stargazers_count']}

  {name: max_star["name"],
description: max_star["description"],
star_count: max_star["stargazers_count"],
repo_url: max_star["html_url"]
}
end

def display(data)
  puts "Name: #{data[:name]}"
  puts "Description: #{data[:description]}"
  puts "Count Stars: #{data[:star_count]}"
  puts "URL: #{data[:repo_url]}"

end
data2 = starred_repo(data)
display1 = (display(data2))
