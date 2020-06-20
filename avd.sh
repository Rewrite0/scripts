rm -rf ~/scripts/log/avd.log
nohup ~/Android/Sdk/emulator/emulator -avd Pixel_2_API_28_1 > ~/scripts/log/avd.log 2>&1 &

