sysbench cpu --cpu-max-prime=20000 --threads=4 run
geekbench
ramspeed -r
dd if=/dev/zero of=tempfile bs=1M count=1024 conv=fdatasync
iozone -a
iperf -s
speedtest-cli
sudo lshw
