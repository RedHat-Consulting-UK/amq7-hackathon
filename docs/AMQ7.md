# JBoss AMQ7 (Apache Artemis)
    https://activemq.apache.org/artemis/

    Apache ActiveMQ Artemis has a proven non blocking architecture. It delivers outstanding performance.
    
Docs and source:
- http://activemq.apache.org/artemis/docs.html
- https://github.com/apache/activemq-artemis

The below training was provided to the SA team internally. Its a good start for 10 to follow:
- https://github.com/rh-messaging/amq7-training
- https://docs.google.com/a/redhat.com/presentation/d/1ItEVK1Rz176m-vXVh-W6jWr55dK4g6LkhIaeolbVI0g/edit?usp=sharing
- https://docs.google.com/a/redhat.com/presentation/d/1XEHKuO6QVAS-cs8HR9pby72lk0RLKUBDwIlRKNGUdAQ/edit?usp=sharing

As AMQ7 has not been released (as of early April 2017) yet, you can either get from upstream or by picking the latest snapshot:
- https://repository.jboss.org/nexus/content/repositories/snapshots/org/jboss/rh-messaging/AMQ7/A-MQ7/7.0.0-SNAPSHOT/

## High level differences of AMQ6 vs AMQ7
    http://activemq.apache.org/artemis/migration/

- Big push to use standardised protocols, i.e.: AMQP and MQTT
- No more TCP vs NIO, everything is NIO.
- KahaDB is dead. Long live "append-only message journal".
- Journal is memory based (written to disk only when required), so depending on use case, settings might need to be tweaked.
- CLI to create broker; which lends its self to Ansible quite well.
- transportConnectors (AMQ6) vs acceptors (AMQ7)
- Topics is dead. Long live multi-cast queues - https://github.com/apache/activemq-artemis/blob/master/docs/user-manual/en/address-model.md
- Load balance via a single queue - think sharding
- Fully Qualified Queue names (FQQN) - seems the way to go for queue names.
- Pre-create queues in config to fully control addresses.
- Filter messages at queue and consumer level. Powerful selectors.
- On linux, we can use Libaio for better performance - http://activemq.apache.org/artemis/docs/2.0.0/libaio.html
- HA options are shared (NFS) or replication (Over network) - http://activemq.apache.org/artemis/docs/2.0.0/ha.html
