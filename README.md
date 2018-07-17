# install
### rippled
```
[Full Document](https://developers.ripple.com/install-rippled.html)

Installation on *Ubuntu* with alien
This section assumes that you are using Ubuntu 15.04 or later.

Install yum-utils and alien:

```
$ sudo apt-get update
$ sudo apt-get install yum-utils alien
```

Install the Ripple RPM repository:
```
$ sudo rpm -Uvh https://mirrors.ripple.com/ripple-repo-el7.rpm
```

Download the rippled software package:
```
$ yumdownloader --enablerepo=ripple-stable --releasever=el7 rippled
```

Verify the signature on the rippled software package:
```
$ sudo rpm --import https://mirrors.ripple.com/rpm/RPM-GPG-KEY-ripple-release && rpm -K rippled*.rpm
```

Install the rippled software package:
```
$ sudo alien -i --scripts rippled*.rpm && rm rippled*.rpm
```

Configure the rippled service to start on system boot:
```
$ sudo systemctl enable rippled.service
```

Start the rippled service
```
$ sudo systemctl start rippled.service
```

### packages
```
$ sudo apt-get install jq
```

# private key
default path: ~/ssl/_domain_private.key

# validator key
default path: ~/.ripple/validator-keys.json
