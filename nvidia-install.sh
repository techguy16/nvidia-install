cmd=(dialog --keep-tite --menu "Select your NVIDIA Card's Series" 22 76 16)

options=(1 "GT 500 Series"
         2 "GeForce 5 FX Series")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            wget https://us.download.nvidia.com/XFree86/Linux-x86_64/390.157/NVIDIA-Linux-x86_64-390.157.run
            sudo chmod +x NVIDIA-Linux-x86_64-390.157.run
            sudo ./NVIDIA-Linux-x86_64-390.157.run
            ;;
        2)
            wget https://us.download.nvidia.com/XFree86/Linux-x86_64/173.14.39/NVIDIA-Linux-x86_64-173.14.39-pkg2.run
            sudo chmod +x NVIDIA-Linux-x86_64-173.14.39-pkg2.run
            sudo ./NVIDIA-Linux-x86_64-173.14.39-pkg2.run
            ;;
    esac
done
