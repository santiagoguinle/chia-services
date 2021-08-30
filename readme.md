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

Download this repository by executing:

```bash
git clone http://github.com/santiagoguinle/chia-services
```

Go inside the folder and execute the install-all.sh file

```bash
cd ~/chia-services
sh install-all.sh
```

If you prefer to install only some of this services you should go folder by folder and install each service like this:

Madmax Plotter Service
```bash
cd ~/chia-services/madmax
sh install.sh
```

Chia Farmer Service
```bash
cd ~/chia-services/chia
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
