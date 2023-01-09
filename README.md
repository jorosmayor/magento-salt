# Magento Salt 🚀

Instalación de un rocket magento sobre una maquina virtual usando vagrant, por medio de Salt.

### Pre-requisitos 📋

_En tú máquina necesitas tener instalado Vagrant y Virtualbox_

```
apt install virtualbox
```

```
wget https://releases.hashicorp.com/vagrant/2.2.19/vagrant_2.2.19_x86_64.deb

apt install ./vagrant_2.2.19_x86_64.deb
```

### Instalación 🔧

_Una serie de ejemplos paso a paso que te dice lo que debes ejecutar para tener un entorno de desarrollo ejecutandose_

_Accede al directorio magento_vagrant/mv_

```
cd magento_vagrant/mv
```

_Crea un par de claves ssh para master y minion_

```
ssh-keygen -m PEM -t rsa -b 4096 -f $(pwd)/ssh-keys -N master-ssh && ssh-keygen -m PEM -t rsa -b 4096 -f $(pwd)/ssh-keys -N minion-ssh
```

_Levanta las máquinas virtuales_

```
vagrant up
```

_Accede a la máquina master_

```
vagrant ssh master
```

_Cifrado de los datos de los pilares_

```
sudo apt-get install -y python3-gpg rng-tools

sudo mkdir -p /etc/salt/gpgkeys && sudo chmod 0700 /etc/salt/gpgkeys

sudo gpg --gen-key --homedir /etc/salt/gpgkeys

sudo gpg --homedir /etc/salt/gpgkeys --armor --export > my-key.gpg

echo -n "Dato a cifrar" | sudo gpg --armor --batch --trust-model always --encrypt -r "mykey"

```

_El mensaje encriptado que devuelve lo tenemos que añadir a composer.sls de la misma forma que está, tanto para usuario como contraseña._

_Ejecuta dentro del master un highstate

```
sudo salt '*' state.highstate
```

![Resultado del highstate](https://raw.githubusercontent.com/jorosmayor/magento-salt/main/img/Captura%20desde%202023-01-09%2011-47-52.png)

_El proceso es algo lento ya que se instala magento y el sample data, así que paciencia :)_

## Versionado 📌

Versión 1:
- Instalación de de Magento por medio de states a piñon. Muy díficil de mantener.

Versión 2:
- Utilización de pillars para el tratamiento de los datos y versiones que requiere nuestro proyecto.

Versión 3:
- Cifrado de los datos sensibles con GPG.