require 'open3'

#script to automate ip lookup through tshark utility and query website

#set hardcode_ip to local ip address, or let script do it (unreliable)

hardcode_ip = "192.168.1.226"
script_ip = Open3.capture3("ip address")[0].split("\n")
script_ip = script_ip[-4].strip.split(" ")[1][0..-4]
ip_ary = Open3.capture3("sudo tshark -i wlp39s0 -c 10 udp")
ary =  ip_ary[0].split(" ")

#enumerate through ary (array of 10 udp ip's) and if any do not equal my_ip, set variable 

other_ip = "" 
ary.each do |i|
  if i != script_ip
    if (i[0..2] == "192")
      next
    end
    other_ip = i
  end
end
system ("firefox --new-window https://whatismyipaddress.com/ip/#{other_ip}")
