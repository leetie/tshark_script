just a script to capture ips from udp connections using tshark.
uses [ruby](https://www.ruby-lang.org/en/downloads/)
it works locally through grabbing a public ip via system("ip address"), but can be configured with a hard-coded local ip by changing the script_ip variable to the output that you would like to monitor.
SETUP
* be sure to install nokogiri and colorize
  `gem install nokogiri`
  `gem install colorize`
 * if `tshark --version` returns nothing, refer to [the tshark installation page](https://tshark.dev/setup/install/) to install it
the script then enumerates through the ip's captured from 10 packets and if one does not begin with 192, or is not equal to your local ip, sets it to a variable. uses the [nokogiri](https://nokogiri.org/) gem to parse a url with the target ip appended to it, and prints info to STDOUT
