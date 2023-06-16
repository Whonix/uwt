# Use Applications over Tor with Stream Isolation and Time Privacy #

Can add "torsocks" and/or "timeprivacy" before invocation of applications when
configured to do so. For example, when simply typing "apt-get" instead of
"torsocks apt-get", "apt-get" can still be routed over Tor.

The uwt package comes with the following applications pre-configured to use
uwtwrapper, Tor and stream isolation:
- apt
- apt-file
- apt-get
- aptitude-curses
- curl
- git
- gpg
- gpg2
- mixmaster-update
- rawdog
- ssh
- wget
- yum
- yumdownloader
- wormhole

To circumvent a uwt wrapper on a by case base, you append ".anondist-real" to
the command, for example "apt-get.anondist-real". You can also deactivate
specific or all uwt wrappers by using the stackable .d-style configuration
folder /etc/uwt.d.

Uwt can only work only as good as torsocks. If torsocks is unable to route all
of an application's traffic over Tor, ex. if there is an leak, there will
also be one when using uwt. For that reason, it is recommended to use
Anonymity Distributions, that prevent such leaks.

If an applications has native support for socks proxy settings, those should
be preferred over uwt. Also refer to the TorifyHOWTO and your distribution's
documentation.

Timeprivacy can keep your time private. You can create wrappers for
applications and timeprivacy will feed those applications with a fake time,
which obfuscates at which time you really used that applications (such as when
you made the git commit or when you signed that document). It does NOT set
your time zone to UTC.

This package is probably most useful for Anonymity Distributions.

This package is produced independently of, and carries no guarantee from,
The Tor Project.

## How to install `uwt` using apt-get ##

1\. Download the APT Signing Key.

```
wget https://www.kicksecure.com/keys/derivative.asc
```

Users can [check the Signing Key](https://www.kicksecure.com/wiki/Signing_Key) for better security.

2\. Add the APT Signing Key.

```
sudo cp ~/derivative.asc /usr/share/keyrings/derivative.asc
```

3\. Add the derivative repository.

```
echo "deb [signed-by=/usr/share/keyrings/derivative.asc] https://deb.kicksecure.com bookworm main contrib non-free" | sudo tee /etc/apt/sources.list.d/derivative.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `uwt`.

```
sudo apt-get install uwt
```

## How to Build deb Package from Source Code ##

Can be build using standard Debian package build tools such as:

```
dpkg-buildpackage -b
```

See instructions.

NOTE: Replace `generic-package` with the actual name of this package `uwt`.

* **A)** [easy](https://www.kicksecure.com/wiki/Dev/Build_Documentation/generic-package/easy), _OR_
* **B)** [including verifying software signatures](https://www.kicksecure.com/wiki/Dev/Build_Documentation/generic-package)

## Contact ##

* [Free Forum Support](https://forums.kicksecure.com)
* [Premium Support](https://www.kicksecure.com/wiki/Premium_Support)

## Donate ##

`uwt` requires [donations](https://www.kicksecure.com/wiki/Donate) to stay alive!
