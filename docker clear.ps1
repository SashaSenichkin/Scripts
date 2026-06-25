wsl --shutdown
Optimize-VHD -Path C:\Users\Hobbit\AppData\Local\Docker\wsl\data\ext4.vhdx -Mode Full

diskpart
select vdisk file="C:\Users\user\AppData\Local\Docker\wsl\disk\docker_data.vhdx"
attach vdisk readonly
compact vdisk
detach vdisk
exit
