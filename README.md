# SVPROGNU

Système d'exploitation 64 bits - 100% GNU basé sur Debian 12 (Bookworm)


## Installation (root)
### Créer clef usb + persistence
**Attention ! La clef ne doit pas être montée par un autre processus (explorateur de fichiers, utilitaire d'auto-mount...)
* Cloner le dépot
```
git clone https://git.vermeulen.pro/SVPRO/svprognu.git && cd svprognu
```
* Si vous avez déjà téléchatgé l'image ISO, dans le même répertoire :
```
./build_svprognu -d /dev/sdX # sdX étant la cible physique de la clé
```
* Ou récupérer l'image depuis le serveur :
```
./build_svprognu -r -d /dev/sdX # sdX étant la cible physique de la clé
```
**La persistence sera configurée lors du 1er boot. Le démarrage peut prendre quelques minutes.**

**Note :** Le mot de passe pour la session « Live User » est `svpro_gnu`

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

### WIKI
https://svprognu.vermeulen.pro/
