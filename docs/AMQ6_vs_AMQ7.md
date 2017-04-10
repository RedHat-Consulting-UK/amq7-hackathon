# High level differences of AMQ6 vs AMQ7
    http://activemq.apache.org/artemis/migration/
    
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
