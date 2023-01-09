# Magento Salt 🚀

Instalación de un rocket magento sobre una maquina virtual usando vagrant, por medio de Salt.

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

Mira **Deployment** para conocer como desplegar el proyecto.


### Pre-requisitos 📋

_En tú maquina necesitas tener instalado Vagrant y Virtualbox_

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

_Levanta las maquinas virtuales_

```
vagrant up
```

_Accede a la máquina master_

```
vagrant ssh master
```

_Ejecuta dentro del master un highstate

```
sudo salt '*' state.highstate
```

_El proceso es algo lento ya que se instala magento y el sample data, por lo que paciencia :)_

## Versionado 📌

Version 1:
- Instalación de de Magento por medio de states a piñon. Muy díficil de mantener,

Versión 2:
- Utilización de pillars para el tratamiento de los datos y versiones que requiere nuestro proyecto.

