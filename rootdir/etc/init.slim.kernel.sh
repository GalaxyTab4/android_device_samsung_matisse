#!/system/bin/sh
#
# Check if user has Slim kernel installed.
# If so disable stock mpdecision and thermal service
# If user uses a 3rd party kernel exit and lets kernel do it's thing

log_file="/data/kernel-boot.log"

echo "----------------------------------------------------" >$log_file
echo "Slim Mondrianwifi Kernel - execution of kernel options init script" >>$log_file
echo "----------------------------------------------------" >>$log_file
echo "Kernel version : `uname -a`" >>$log_file

echo `date +"%F %R:%S : Checking for Slim Mondrianwifi kernel..."` >>$log_file

if [ "`uname -r | grep SlimLP`" == "" ]
  then
    echo `date +"%F %R:%S : No Slim Mondrianwifi kernel found, skip executing the config file"` >>$log_file
    exit
fi;

echo `date +"%F %R:%S : Slim Mondrianwifi kernel found, continue executing the config file..."` >>$log_file

echo `date +"%F %R:%S : Waiting for Android to start..."` >>$log_file

# Wait until we see some android processes to consider boot is more or less complete (credits to AndiP71)
while ! pgrep com.android ; do
  sleep 1
done

echo `date +"%F %R:%S : Android is starting up, let's wait another 10 seconds..."` >>$log_file

# Now that is checked, let's just wait another tiny little bit
sleep 30

echo `date +"%F %R:%S : Starting kernel configuration..."` >>$log_file

# Set Slim Mondrian kernel hotplug defaults
stop mpdecision
echo `date +"%F %R:%S : Check if mpdecision service is running..."` >>$log_file
ps | grep mpdecision
if [ "`ps | grep mpdecision`" == "" ] ;
  then
    echo `date +"%F %R:%S : mpdecision was successfully killed"` >>$log_file
  else
    echo `date +"%F %R:%S : mpdecision was not killed, please grab a dmesg"` >>$log_file
fi
echo `date +"%F %R:%S : Enable intellidemand..."` >>$log_file
echo 1 > /sys/module/intelli_plug/parameters/intelli_plug_active

# Activate zSwap with 512Mb
if [ -e /sys/block/vnswap0/disksize ] ; then
  swapoff /dev/block/vnswap0
  echo 536870912 > /sys/block/vnswap0/disksize
  mkswap /dev/block/vnswap0
  swapon /dev/block/vnswap0
  echo `date +"%F %R:%S : 512Mb zSwap support enabled."` >>$log_file
else
  echo `date +"%F %R:%S : vnswap/disksize is already set, skipping."` >>$log_file
fi

# Set swappiness to 80
echo 80 > /proc/sys/vm/swappiness;
echo `date +"%F %R:%S : Swappiness set to 80."` >>$log_file


echo `date +"%F %R:%S : End of script"` >>$log_file
chmod 644 $log_file
