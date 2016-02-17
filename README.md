# Custom MOTD
  - Version.......: 0.3.7 (Feb 2016)
  - By............: Mun ~ Cameron Munroe
  - Website.......: https://www.cameronmunroe.com/
  - Git...........: https://git.enjen.net/Munzy/custom_motd
  - GitHub........: https://github.com/Munroenet/custom_motd

# What is Custom MOTD?
Custom MOTD is a addition to the regular MOTD system built into most Linux servers / Desktops. It was built by myself to show valuable information right at login, things that the inital MOTD in most system seem to lack. 

![](https://www.cameronmunroe.com/u/2016-02-14_23-31-48.png)


# Dependencies

  - vnstat
  - wget  

# Global Install

1. Download custom_motd to /usr/bin/custom_motd
2. apt-get install ca-certificates
3. apt-get install vnstat
4. Edit /etc/vnstat.conf
5. Change 'Interface "eth0"' to your default interface
6. chmod +x /usr/bin/custom_motd
7. Edit /etc/profile
8. Add custom_motd to the EOF (End of file)

# Single User Install

1. Download custom_motd to /usr/bin/custom_motd
2. apt-get install ca-certificates
3. apt-get install vnstat
4. Edit /etc/vnstat.conf
5. Change 'Interface "eth0"' to your default interface
6. chmod +x /usr/bin/custom_motd
7. Login into user you wish to have custom_motd installed on
8. Edit ~/.profile
9. Add custom_motd to the EOF (End of file)
10. Repeats steps (7 - 9) as needed for each user. 

# Example Installers

Example installers can be found under the inst folder. 

# IP Info Source

The IP info shown in the MOTD is your systems default IPs. If you have multiple IPs of the same version it will only show the dafault sytem IP and no others. 

We use wget to pull the IP info as it is generally installed by default on all platforms, at least as far as I know. 

We pull the IP info from an external source that I run called enjen.net. All connections made to enjen.net are over HTTPS so your data is secure and encrypted. As of current, Feb 2016, it has a A+ rating as per ssllabs.com. 

# Bandwidth Info

The bandwidth info comes from vnstat. Vnstat is an amazing little tool and will show this months usage. 

# Credits
  - Total Project...: Cameron Munroe ~ Mun
  - OS Code.........: Observium https://github.com/tomzx/observium/blob/svn-trunk/scripts/distro
  - ASCII Welcome...: http://patorjk.com/software/taag/
  - ASCII Cat.......: http://www.asciiworld.com/-Cats-.html
  - Etc.............: http://stackoverflow.com/ For being amazing....
  
# Tested On
   - Ubuntu 14.04
   - Debian 8.3
   - Debian 7.0
   - Debian 6.0
   - Centos 7.1
   - Centos 6
   - Centos 5 (Minor compatability issue with Act. Logins)
   
# Known Issues
   - VestaCP: Breaks some cron functions. (Use single user install to resolve)
   
# Task List
 
 https://tl.munroenet.com/b/qFvPa8PxWYGkcBLku/custom_motd#