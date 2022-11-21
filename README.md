# SVPROGNU

Système d'exploitation x64 - 100% GNU basé sur Debian 11 (Bullseye)


## Installation (root)
### Créer clef usb + persistence
**Attention ! La clef ne doit pas être montée par un autre processus (explorateur de fichiers, utilitaire d'auto-mount...)

Si vous avez déjà téléchatgé l'image ISO, dans le même répertoire :
```
curl https://git.weblib.re/svpro/svprognu/raw/branch/develop/build_svprognu | bash -s -- -d /dev/sdX
```
* Ou récupérer l'image depuis le serveur :
```
curl https://git.weblib.re/svpro/svprognu/raw/branch/develop/build_svprognu | bash -s -- -r -d /dev/sdX
```
**La persistence sera configurée lors du 1er boot. Le démarrage peut prendre quelques minutes.

### Installation physique
Depuis le menu du live, choisir "Installation Graphique ou Experts"



## Build iso avec live-build (experts)
Cloner le dépôt puis :
```
apt install live-build
cd <dossier du dépôt>
lb config
lb build
```

### Démo (Session Live via noVNC)
En ligne uniquement en journée
https://svprognu.weblib.re/


### ToDo

- [x] Installeur
- [x] Live Persistence
- [ ] Integration Yunohost
