# Chia and Madmax automation

This set  of scripts are made for simplify my own chia setup.

Feel free to use it, improve it or colaborate in order to get a better product for the community.

## Requirements

You must have installed on the user folder :
- chia-blockchain
- madmax
- flax-blockchain (optional)
- chaingreen-blockchain (optional)

You must have been joined to a pool in order to use madmax plotter

### Important Note

The user on my linux user was named "usuario", if (probably) your user on linux has another name you should modify these scripts and services files before install (or reinstalling services)

## Installation and configuration

Download this repository by executing on your user folder:

```bash
git clone http://github.com/santiagoguinle/chia-services
```

### Installation of Chia Farmer Service :

Notes:
- you should have chia-blockchain installed on your "~/" folder, and working normally with "chia start farmer"
- if the name of your user is not "usuario" you should modify several of these files in order to this works


Then run:
```bash
cd ~/chia-services/chia
sh install.sh
```


### Installation of Madmax Plotter Service

First open and edit the file "~/chia-services/madmax/plotter.config" using as a guide the examples in the file.

Notes:
- vars temp1 and temp: can be the same folder, this folder will be erased before every plotting starts, so: BE CAREFULLY
- dests: this ones should be the root folder of the mounted disks, if they aren't is not going to work the "free space checker"
- rvar, fvar and cvar are called as the same letter on madmax binary
- fvar and cvar must be completed with yours keys

Then run:
```bash
cd ~/chia-services/madmax
sh install.sh
```
## Usage

Once installed the services will run automatically

if you want to see some output of the different service you could use:

```bash
systemctl status chia-farmer.service
```
or

```bash
systemctl status chia-plotter.service
```

## Contributing
	
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## Code Contributors

This project exists thanks to all the people who contribute. 

## Author

👤 **Santiago Guinle**

- Github: [@santiagoguinle](https://github.com/santiagoguinle)


## License
[MIT](https://github.com/santiagoguinle/chia-services/blob/main/LICENSE)
