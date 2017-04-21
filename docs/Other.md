# Other
## Quiver
    https://github.com/ssorj/quiver

Written by a RH engineer, seems like a good fit to validate configuration and performance: i.e:
1. With X memory setting, how many messages can my broker handle?
2. How many simultaneous connections can my broker handle?
3. Do my fail-over strategies work?
4. Does quiver show the same performance as the customers client code?
5. ...

A Dockerfile and OCP template are also provided:
- https://github.com/ssorj/quiver#openshift
- https://github.com/ssorj/quiver/tree/master/openshift

## Overview of AMQP / MQTT / Stomp:
- https://blogs.vmware.com/vfabric/2013/02/choosing-your-messaging-protocol-amqp-mqtt-or-stomp.html

## Additional Resources
- RedHat Messaging strategy by Ted Ross https://mojo.redhat.com/docs/DOC-999700
- David Ingham - Messaging and IoT https://mojo.redhat.com/docs/DOC-1084961
- Paypal Experience with Qpid https://www.youtube.com/watch?v=8TsXuuBK_RY

### AMQ7
- AMQ7 Release https://mojo.redhat.com/docs/DOC-1077802
- AMQ7 Build and Release Process https://docs.engineering.redhat.com/display/JP/AMQ7+Build+and+Release+Process
- A-MQ 7.0.0 release Knowledge base https://mojo.redhat.com/docs/DOC-1042227
- Artemis/AMQ-7 release process https://mojo.redhat.com/docs/DOC-1048815
- A-MQ7 Testing Overview https://mojo.redhat.com/docs/DOC-1086237

### A-MQ Interconnect
- A-MQ Interconnect Knowledge Base https://mojo.redhat.com/docs/DOC-1075402
- A-MQ Interconnect How To https://mojo.redhat.com/docs/DOC-1071615
- A-MQ Interconnect Test Plan https://mojo.redhat.com/docs/DOC-1070643
- A-MQ 7.0 Artemis Interconnect and Clients Demos https://mojo.redhat.com/docs/DOC-1078656
- Introduction to A-MQ Interconnect slides - https://mojo.redhat.com/docs/DOC-1077891
