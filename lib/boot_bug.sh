echo 18 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio18/direction
echo 1 > /sys/class/gpio/gpio18/value
sleep 5s
echo 0 > /sys/class/gpio/gpio18/value
