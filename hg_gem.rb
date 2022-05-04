require 'hosted_graphite'



HostedGraphite.api_key = '8770573a-2e24-4ad5-9d1f-f69afca83321'
# HostedGraphite.namespace = 'test_app'


x = 0
while x <= 10

    HostedGraphite.protocol = :udp
    HostedGraphite.send_metric('test.tag.ruby;protocol=udp,location=west', 1.2)

    HostedGraphite.protocol = :tcp
    HostedGraphite.send_metric('test.ruby;protocol=tcp,location=east', 1.2)
    x = x + 1
end

puts "metrics sent to HG"
