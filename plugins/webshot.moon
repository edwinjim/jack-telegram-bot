run = (msg,matches) ->
  
  web = matches[1]
  
  url = "http://api.screenshotmachine.com/?key=b645b8&size=X&url=#{web}"
  
  file = url
  cap = web
  
  file_path = download_to_file file,"screenshot.jpg"
  
  telegram!\sendPhoto msg.chat.id,file_path,cap
  os.remove file_path

  return
 
  

return {
  description: "*send a screen shot from web*"
  usage: "`/webshot [url]`\n"
  patterns: {
  "^[/!#]webshot (.*)"
  }
  :run
}
