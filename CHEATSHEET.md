# Tricks to do stuff on linux

These are some things I do every now and again and keep forgetting

## Sound

`alsamixer`

## Bluetooth

`bluetoothctl`

Important ones: `list`, `devices`


If there are problems check rfkill

```
rfkill list all
0: hci0: Bluetooth
	Soft blocked: yes
	Hard blocked: no
1: phy0: Wireless LAN
	Soft blocked: no
	Hard blocked: no
➜  ~ sudo rfkill unblock bluetooth
➜  ~ rfkill list all
0: hci0: Bluetooth
	Soft blocked: no
	Hard blocked: no
1: phy0: Wireless LAN
	Soft blocked: no
	Hard blocked: no

```
