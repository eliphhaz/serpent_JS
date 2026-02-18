# 📦 Comment créer un APK dans Android Studio

## 🎯 Méthode 1 : APK Debug (Rapide - Pour tester)

### Étapes :

1. **Dans Android Studio, va dans le menu :**
   ```
   Build → Build Bundle(s) / APK(s) → Build APK(s)
   ```

2. **Attends la compilation**
   - Une barre de progression apparaît en bas
   - Ça prend 1-2 minutes

3. **Localise l'APK**
   - Une notification apparaît : "APK(s) generated successfully"
   - Clique sur "locate" dans la notification
   - Ou va manuellement dans :
   ```
   android/app/build/outputs/apk/debug/app-debug.apk
   ```

4. **Partage l'APK**
   - Copie `app-debug.apk` sur ton téléphone
   - Installe-le (active "Sources inconnues" si nécessaire)
   - Ou envoie-le à tes amis !

## 🔒 Méthode 2 : APK Signé (Pour publier)

### Étapes :

1. **Créer un Keystore (première fois seulement)**
   ```
   Build → Generate Signed Bundle / APK → APK → Next
   ```

2. **Créer une nouvelle clé**
   - Clique sur "Create new..."
   - Remplis les informations :

     - Key store path : Choisis un emplacement (ex: C:/keys/elipsnack.jks)
     - Password : Crée un mot de passe fort
     - Alias : elipsnack
     - Validity : 25 (années)
     - First and Last Name : Ton nom
     - Organization : Ton organisation (optionnel)

3. **Signer l'APK**
   - Sélectionne "release"
   - Coche "V1" et "V2"
   - Clique sur "Finish"

4. **Récupère l'APK signé**
   - Emplacement : `android/app/release/app-release.apk`

## ⚡ Méthode Rapide (Ligne de commande)

```bash
# APK Debug
cd android
gradlew assembleDebug

# APK se trouve dans :
# android/app/build/outputs/apk/debug/app-debug.apk
```

## 📱 Installer l'APK sur ton téléphone

### Option 1 : USB
1. Active le "Mode développeur" sur ton téléphone
2. Active le "Débogage USB"
3. Connecte ton téléphone
4. Dans Android Studio : Run → Select Device → Ton téléphone

### Option 2 : Transfert de fichier
1. Copie `app-debug.apk` sur ton téléphone
2. Ouvre le fichier avec un gestionnaire de fichiers
3. Autorise l'installation depuis des sources inconnues
4. Installe l'app !

## 🎯 Résumé rapide

**Pour tester rapidement :**
```
Build → Build Bundle(s) / APK(s) → Build APK(s)
```
→ Récupère `app-debug.apk` dans `android/app/build/outputs/apk/debug/`

**Pour publier :**
```
Build → Generate Signed Bundle / APK
```
→ Crée un keystore et signe l'APK

## 📊 Tailles approximatives

- APK Debug : ~5-10 MB
- APK Release : ~3-7 MB (optimisé)

## ✅ Checklist avant de partager

- [ ] L'app fonctionne dans l'émulateur
- [ ] Tous les contrôles fonctionnent
- [ ] Pas de crash
- [ ] Les graphismes s'affichent correctement
- [ ] Le jeu est jouable du début à la fin

Voilà ! Tu peux maintenant créer ton APK et le partager ! 🚀📱
