cmd=(dialog --keep-tite --menu "Select your NVIDIA Card's Series" 22 76 16)

options=(1 "Nvidia Driver 173.14.39 (x64)"
         2 "Nvidia Driver 390.157 (x64)"
         3 "Nvidia Driver 418.113 (x64)"
         4 "Nvidia Driver 470.161.03 (x64)"
         5 "Nvidia Driver 525.89.02 (x64)")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)  
            wget https://us.download.nvidia.com/XFree86/Linux-x86_64/173.14.39/NVIDIA-Linux-x86_64-173.14.39-pkg2.run
            sudo chmod +x NVIDIA-Linux-x86_64-173.14.39-pkg2.run
            sudo ./NVIDIA-Linux-x86_64-173.14.39-pkg2.run
            ;;
        2)
            wget https://us.download.nvidia.com/XFree86/Linux-x86_64/390.157/NVIDIA-Linux-x86_64-390.157.run
            sudo chmod +x NVIDIA-Linux-x86_64-390.157.run
            sudo ./NVIDIA-Linux-x86_64-390.157.run
            ;;
        3)
            wget https://us.download.nvidia.com/XFree86/Linux-x86_64/418.113/NVIDIA-Linux-x86_64-418.113.run
            sudo chmod +x NVIDIA-Linux-x86_64-418.113.run
            sudo ./NVIDIA-Linux-x86_64-418.113.run
            ;;
        4)
            wget https://us.download.nvidia.com/XFree86/Linux-x86_64/470.161.03/NVIDIA-Linux-x86_64-470.161.03.run
            sudo chmod +x NVIDIA-Linux-x86_64-470.161.03.run
            sudo ./NVIDIA-Linux-x86_64-470.161.03.run
            ;;
        5)
            wget https://us.download.nvidia.com/XFree86/Linux-x86_64/525.89.02/NVIDIA-Linux-x86_64-525.89.02.run
            sudo chmod +x NVIDIA-Linux-x86_64-525.89.02.run
            sudo ./NVIDIA-Linux-x86_64-525.89.02.run
            ;;
    esac
done

echo "Blacklisting nouveau..."
sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
