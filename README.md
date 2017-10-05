# VagrantPuppetSimpleExample

## Что работает
Vagrantfile загружает puppet и создает 3 виртуальные машины ubuntu/trusty64.

Машина master загружает `mysql`, машина node1 загружает `apache`, и node2 загружает `php`.

P.S. для версии ubuntu/trusty64 нету более новой версии puppet, и оказалось, что конфигурации nodejs не совместимы с этой версией puppet, поэтому поставили php.


### Полезные команды vagrant:

`vagrant add box ubuntu/trusty64` - добавить контейнер

`vargant init` - создание Vagrantfile в директории, где будут находится все файлы проекта

`vagrant up` - запуск всех виртуалок, которые прописаны в Vagrantfile (выполнять из папки, в которой лежит Vagrantfile)

`vagrant up master` - запуск только одной ноды (машины) с именем master

`vagrant halt` - выключить все виртуалки

`vagrant halt master` - выключить ноду с именем master

`vagrant up --provision` - запуск всех нод и полное выполнение Vagrantfile

`vagrant ssh master` - подключится к ноде с именем master


### На виртуальной машине:

`cd /vagrant` - shared папка

`mysql --version` - узнать версию mysql (проверить, что установился)

`apache2 --version`
