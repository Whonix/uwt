# Use Applications over Tor with Stream Isolation and Time Privacy #

Can add "torsocks" and/or "timeprivacy" before invocation of applications when
configured to do so. For example, when simply typing "apt-get" instead of
"torsocks apt-get", "apt-get" can still be routed over Tor.

Uwt is a hack, which can be used to add stream isolation support to torsocks
as long as torsocks does not feature native stream isolation support.

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
your time zone to UTC. (You could manually set your timezone to UTC or install
the timezone-utc package.)

This package is probably most useful for Anonymity Distributions.

This package is produced independently of, and carries no guarantee from,
The Tor Project.
## How to install `uwt` using apt-get ##

1\. Download [Whonix's Signing Key]().

```
wget https://www.whonix.org/patrick.asc
```

Users can [check Whonix Signing Key](https://www.whonix.org/wiki/Whonix_Signing_Key) for better security.

2\. Add Whonix's signing key.

```
sudo apt-key --keyring /etc/apt/trusted.gpg.d/whonix.gpg add ~/patrick.asc
```

3\. Add Whonix's APT repository.

```
echo "deb https://deb.whonix.org buster main contrib non-free" | sudo tee /etc/apt/sources.list.d/whonix.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `uwt`.

```
sudo apt-get install uwt
```

## How to Build deb Package ##

Replace `apparmor-profile-torbrowser` with the actual name of this package with `uwt` and see [instructions](https://www.whonix.org/wiki/Dev/Build_Documentation/apparmor-profile-torbrowser).

## Contact ##

* [Free Forum Support](https://forums.whonix.org)
* [Professional Support](https://www.whonix.org/wiki/Professional_Support)

## Donate ##

`uwt` requires [donations](https://www.whonix.org/wiki/Donate) to stay alive!
