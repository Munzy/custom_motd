# Custom MOTD
| | |
| ---- | ---- |
| Version | 0.3.10 (April 2017)|
| By | Mun ~ Cameron Munroe |
| Website | https://www.cameronmunroe.com |
| Git | https://git.enjen.net/munzy/custom_motd |
| Github | https://github.com/Munzy/custom_motd |


# What is Custom MOTD?
Custom MOTD is a addition to the regular MOTD system built into most Linux servers / Desktops. It was built by myself to show valuable information right at login, things that the inital MOTD in most system seem to lack. 

![](https://www.cameronmunroe.com/u/2017-04-11_15-28-01.png)


# Dependencies

  - vnstat
  - wget
 
# Quick Install  

 Debian based.
 ``` wget -qO- https://raw.githubusercontent.com/Munzy/custom_motd/master/inst/deb.sh | bash ```
 
 Centos based.
 ``` wget -qO- https://raw.githubusercontent.com/Munzy/custom_motd/master/inst/centos.sh | bash ```
 
 Update custom_motd.
 ``` wget -qO- https://raw.githubusercontent.com/Munzy/custom_motd/master/inst/upgrade.sh | bash ```

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

| | |
| ---- | ---- |
| Total Project | Cameron Munroe ~ Mun |
| OS Code | Observium https://github.com/tomzx/observium/blob/svn-trunk/scripts/distro |
| ASCII Welcome | http://patorjk.com/software/taag/ |
| ASCII Cat | http://www.asciiworld.com/-Cats-.html |
| KSM Calculations | https://github.com/tomzx/observium/blob/svn-trunk/scripts/agent-local/ksm |
| KSM Calculations | https://gist.githubusercontent.com/wankdanker/1206923/raw/73d864c438022ba8c92381f3eddf61bac6163b9f/ksmstat |
| Et Cetera | http://stackoverflow.com/ For being amazing.... |

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
   - X2GO: Breaks login ability and returns unset TERM. Disable on the account you are using to bypass. 
   

# Bug Reports
 If you find a bug please post on this forum: https://qwdsa.com/c/forums/bug-reports.18/
 
 Give me as much detail as possible so I can diagnose the issue quicker and faster.
 
# Donations

If you like my projects, and work then please donate! 

https://www.cameronmunroe.com/coffee/
