# 🚀 Démarrage Rapide - Version Mobile

## Installation en 3 étapes

### 1️⃣ Installer Node.js
Télécharge et installe Node.js depuis https://nodejs.org/ (version LTS recommandée)

### 2️⃣ Installer les dépendances
Ouvre un terminal dans le dossier du projet et exécute :
```bash
npm install
```

### 3️⃣ Choisir ta plateforme

#### 📱 Pour Android :

**Prérequis :**
- Installer Android Studio : https://developer.android.com/studio

**Commandes :**
```bash
# Ajouter la plateforme Android
npm run cap:add:android

# Synchroniser les fichiers
npm run cap:sync

# Ouvrir dans Android Studio
npm run cap:open:android
```

Dans Android Studio, clique sur le bouton ▶️ (Run) pour lancer l'app sur un émulateur ou appareil.

#### 🍎 Pour iOS (Mac uniquement) :

**Prérequis :**
- Installer Xcode depuis l'App Store
- Installer CocoaPods : `sudo gem install cocoapods`

**Commandes :**
```bash
# Ajouter la plateforme iOS
npm run cap:add:ios

# Synchroniser les fichiers
npm run cap:sync

# Ouvrir dans Xcode
npm run cap:open:ios
```

Dans Xcode, clique sur le bouton ▶️ (Run) pour lancer l'app sur un simulateur ou appareil.

## 🔄 Après chaque modification

Quand tu modifies le code du jeu :

```bash
# 1. Copier les changements dans www/
copy index.html www\index.html

# 2. Synchroniser
npm run cap:sync

# 3. Relancer l'app depuis Android Studio ou Xcode
```

## ✅ Test rapide

Pour tester si tout fonctionne :

```bash
# Vérifier que Node.js est installé
node --version

# Vérifier que npm est installé
npm --version

# Installer les dépendances
npm install

# Vérifier que Capacitor est prêt
npx cap doctor
```

## 🎮 Fonctionnalités mobiles

- ✨ Contrôles tactiles (swipe)
- 📳 Vibrations haptiques
- 🎨 Barre de statut personnalisée
- 📱 Optimisé pour tous les écrans
- 🔋 Performance native

## 💡 Astuces

- Utilise un appareil réel pour tester les vibrations
- Les émulateurs sont plus rapides pour le développement
- Active le mode développeur sur Android pour le débogage USB

## 🆘 Besoin d'aide ?

Consulte `CAPACITOR_SETUP.md` pour plus de détails ou visite :
- https://capacitorjs.com/docs
- https://capacitorjs.com/docs/getting-started

Bon développement ! 🚀
