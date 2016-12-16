# NextCloud For Drobo5N
The version bundled with this package is 11.0.1 but it can easily be updated for a newer version

After install, App will be available at http://drobo5n:8080/nextcloud/

This is a set of scripts to package a DroboApp from scratch, i.e., download sources, unpackage, compile, install, and package in a TGZ file.

Keep in mind that this DroboApp requires [apache](https://github.com/droboports/apache) and the [locale](https://github.com/droboports/locale) apps to be installed.

## How to compile

First make sure that you have a [working cross-compiling VM](https://github.com/droboports/droboports.github.io/wiki/Setting-up-a-VM).

Log in the VM, pick a temporary folder (e.g., `~/build`), and then do:

```
git clone https://github.com/CarlosRoque/nextcloud_drobo.git
cd nextcloud
./build.sh
ls -la *.tgz
```

Each invocation creates a log file with all the generated output.

* `./build.sh distclean` removes everything, including downloaded files.
* `./build.sh clean` removes everything but downloaded files.
* `./build.sh package` repackages the DroboApp, without recompiling.

## Installing
Just copy the genereated nextcloud.tgz file to:
```
/mnt/DroboFS/Shares/DroboApps
```
Restart your drobo. The app will be available here
```
http://drobo5n:8080/nextcloud/
```

## Sources

* nextcloud: https://nextcloud.com/

# Suggestions

### Drobo Mounted Shares
Becuase Own cloud keeps each user storage separate, you need to add each Drobo Share that you wish to share as Local Storage. To accomplish that:
 * Enable the "External storage support" App
 * Go to Admin>External Storage
 * Type a Folder Name
 * Select Local
 * Add the path to the Share i.e. /mnt/DroboFS/Shares/< ShareName >
 * Add any users or groups for whom the folder will be available
 * Repeat for all desired Shares

### Database
If you are planing on having more than one user, then it is recomended that you use a database like MySQL. You can use the one built in the Drobo 5N but make sure to increase max_connections and max_allowed_packet. You can do that by setting those flags in the my.cnf file located here
 ```
/mnt/DroboFS/Shares/DroboApps/mysql/my.cnf
 ```



<sub>**Disclaimer**</sub>

<sub><sub>Drobo, DroboShare, Drobo FS, Drobo 5N, DRI and all related trademarks are the property of [Data Robotics, Inc](http://www.drobo.com/). This site is not affiliated, endorsed or supported by DRI in any way. The use of information and software provided on this website may be used at your own risk. The information and software available on this website are provided as-is without any warranty or guarantee. By visiting this website you agree that: (1) We take no liability under any circumstance or legal theory for any DroboApp, software, error, omissions, loss of data or damage of any kind related to your use or exposure to any information provided on this site; (2) All software are made “AS AVAILABLE” and “AS IS” without any warranty or guarantee. All express and implied warranties are disclaimed. Some states do not allow limitations of incidental or consequential damages or on how long an implied warranty lasts, so the above may not apply to you.</sub></sub>
