just a script to capture ips from udp connections using tshark.
it works locally through grabbing a public ip via system("ip address"), but can be configured with a hard-coded local ip by changing the script_ip variable to the output that you would like to monitor.

the script then enumerates through the ip's captured from 10 packets and if one does not begin with 192, or is not equal to your local ip, sets it to a variable. once eof is reached it opens a firefox tab [https://whatismyipaddress.com/ip/] and appends the variable to it.