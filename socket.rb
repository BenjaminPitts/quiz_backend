require 'socket'

conn = TCPSocket.new 'carbon.hostedgraphite.com', 2003
conn.puts "8770573a-2e24-4ad5-9d1f-f69afca83321.ruby_tcp.test;rubySocketTest=value1 1.2\n"
conn.close

sock = UDPSocket.new
sock.send "8770573a-2e24-4ad5-9d1f-f69afca83321.ruby_udp.test;rubyUdpTest=value1 2.2\n", 0, "carbon.hostedgraphite.com", 2003

puts "tcp and udp metrics sent"
