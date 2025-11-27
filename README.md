# cesi-tp-jour3
Pré-requis : une machine debian avec docker installé.

1/ Valider que docker est bien fonctionnel avec la commande 
```bash
docker run hello-world
```
2/ Creer une image docker pour faire tourner notre script "joke.sh"

3/ Une fois l'image crééer, la pousser dans le registre : harbor.serverzenith.com:8443/cesi/<nomEtPrénom>/joke-app:<dateDuJour>
(les identifiants : robot$cesi+students / xjG41eNqeadnAU1vxGDtJWfygyeTnT5l) 

4/ Installer une seconde vm debian avec docker 

5/ Conteneuriser l'application HA-DEMO et l'envoyer dans le registry harbor harbor.serverzenith.com:8443/cesi/<nomEtPrénom>/ha-demo-app:<dateDuJour>. Tout le nécessaire se trouve dans le dossier "HA-DEMO"

