/etc/rc.local:

echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo never > /sys/kernel/mm/transparent_hugepage/defrag

---

redis_1  | 1:M 26 Feb 04:55:05.037 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis_1  | 1:M 26 Feb 04:55:05.037 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
mongodb_1  | 2017-02-26T04:59:31.807+0000 I STORAGE  [initandlisten] ** WARNING: Using the XFS filesystem is strongly recommended with the WiredTiger storage engine
mongodb_1  | 2017-02-26T04:59:32.538+0000 I CONTROL  [initandlisten] ** WARNING: You are running on a NUMA machine.
mongodb_1  | 2017-02-26T04:59:32.538+0000 I CONTROL  [initandlisten] **          We suggest launching mongod like this to avoid performance problems:
mongodb_1  | 2017-02-26T04:59:32.538+0000 I CONTROL  [initandlisten] **              numactl --interleave=all mongod [other options]