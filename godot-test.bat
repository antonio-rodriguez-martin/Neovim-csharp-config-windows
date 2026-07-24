@echo off

echo arg1=[%1] > "%USERPROFILE%\Desktop\godot_args.txt"
echo arg2=[%2] >> "%USERPROFILE%\Desktop\godot_args.txt"
echo all=[%*] >> "%USERPROFILE%\Desktop\godot_args.txt"

pause
