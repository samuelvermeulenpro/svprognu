# SVPROGNU

Système d'exploitation 64 bits - 100% GNU basé sur Debian 13 (Trixie)

* Bureau XFCE 4.20, écran de connexion LightDM
* Thème SVPro : démarrage Plymouth, menus GRUB / isolinux, fond d'écran et écran de connexion
* La version Debian 12 (Bookworm) reste disponible sur la branche `bookworm`


## Installation (root)
### Créer clef usb + persistence
**Attention ! La clef ne doit pas être montée par un autre processus (explorateur de fichiers, utilitaire d'auto-mount...)
* Cloner le dépot
```
git clone https://github.com/samuelvermeulenpro/svprognu.git && cd svprognu
```
* Si vous avez déjà téléchargé l'image ISO, dans le même répertoire :
```
./build_svprognu -d /dev/sdX # sdX étant la cible physique de la clé
```
* Ou récupérer l'image depuis le serveur :
```
./build_svprognu -r -d /dev/sdX # sdX étant la cible physique de la clé
```
* Ou télécharger l'image seule (vérifiée par somme SHA-256) :
```
./build_svprognu -r
```
Le script affiche la clé ciblée et demande confirmation avant de l'effacer (`-y` pour s'en passer).

**La persistence sera configurée lors du 1er boot. Le démarrage peut prendre quelques minutes.**

**Note :** Le mot de passe pour la session « Live User » est `svpro_gnu`

### Installation physique
Depuis le menu du live, choisir "Installation graphique" ou "Options d'installation avancées"

## Build iso avec live-build (experts)
Sur une Debian 13, cloner le dépôt puis :
```
apt install live-build
cd <dossier du dépôt>
lb config
lb build
```
L'image produite est `live-svprognu-trixie_amd64.iso` (+ `.sha256sum`), le journal dans `build.log`.

### Thème
| Élément | Emplacement dans `config/` |
|---|---|
| Plymouth | `includes.chroot/usr/share/plymouth/themes/svpro` |
| GRUB du live (UEFI) | `bootloaders/grub-pc` |
| isolinux du live (BIOS) | `bootloaders/syslinux_common` |
| GRUB du système installé | `includes.chroot/usr/share/svprognu/grub/themes/svpro` (copié dans `/boot/grub/themes/svpro`) |
| Fond d'écran / LightDM | `includes.chroot/usr/share/backgrounds/svprognu`, `includes.chroot/etc/lightdm` |

### WIKI
https://svprognu.vermeulen.pro/
