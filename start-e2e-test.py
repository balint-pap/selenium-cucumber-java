import subprocess

#Download geckodriver
#subprocess.call("./downloadDriver.sh", shell=True)
#Set to rwx-rwx-rwx
subprocess.call(['chmod', '777', './geckodriver'])
#start driver
subprocess.call("./startDriver.sh", shell=True)
