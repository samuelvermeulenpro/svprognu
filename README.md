# svpro_gnu

Système d'exploitation x64 - 100% GNU basé sur Debian

## Installation (root)
### Générer ISO seule
```
curl https://git.weblib.re/svpro/svpro_gnu/raw/branch/develop/build_svprognu | bash
```
### Créer clef usb + persistence
**Attention ! La clef ne doit pas être montée par un autre processus (explorateur de fichiers, utilitaire d'auto-mount...)
```
curl https://git.weblib.re/svpro/svpro_gnu/raw/branch/develop/build_svprognu | bash -s -- -d /dev/sdX
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
