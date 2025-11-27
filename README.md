# cesi-tp-jour3
0/ Sur une machine debian SANS INTERFACE GRAPHIQUE, installer docker
=> https://docs.docker.com/engine/install/debian/

1/ Valider que docker est bien fonctionnel avec la commande 
```bash
docker run hello-world
```
2/ Faire une image docker pour faire tourner le script "joke.sh"
2.1/ S'assurer que l'image fonctionne

3/ Une fois l'image existante, la pousser dans le registre : harbor.serverzenith.com:8443/cesi/<nomEtPrénom>/joke-app:<dateDuJour>
(les identifiants : robot$cesi+students / xjG41eNqeadnAU1vxGDtJWfygyeTnT5l) 

4/ Installer une seconde vm debian avec docker 
=> curl https://get.docker.com |bash

5/ Mettre les 2 VM Debian en cluster "Swarm" 

6/ Conteneuriser l'application HA-DEMO et l'envoyer dans le registry harbor harbor.serverzenith.com:8443/cesi/<nomEtPrénom>/ha-demo-app:<dateDuJour>. Tout le nécessaire se trouve dans le dossier "HA-DEMO"

7/ Lancer 2 réplicas de l'application ha-demo sur le cluster "swarm"

8/ sur une 3e vm, installer et configurer un load balancer haproxy, pour répartir la charge entre nos 2 applications "ha-demo"
L'application doit être accessible sur whatismycontainername.cesi.local
