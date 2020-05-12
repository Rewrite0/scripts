rm -rf /home/rewrite/scripts/log/avd.log
nohup /home/rewrite/Android/Sdk/tools/emulator -avd Pixel_2_API_26 > /home/rewrite/scripts/log/avd.log 2>&1 &
echo "avd启动成功"

