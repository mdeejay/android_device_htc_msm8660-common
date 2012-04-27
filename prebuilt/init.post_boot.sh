#!/system/bin/sh

target=`getprop ro.board.platform`

case "$target" in
    "msm8660")
	 echo 45000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	 echo 45000 > /sys/devices/system/cpu/cpu1/cpufreq/ondemand/sampling_rate
	 echo 85 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
	 echo 85 > /sys/devices/system/cpu/cpu1/cpufreq/ondemand/up_threshold
	 echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	 echo 4 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/ondemand/sampling_rate
	 echo 192000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	 echo 192000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
        ;;
esac

