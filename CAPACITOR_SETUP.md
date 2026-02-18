# 📱 Configuration Capacitor pour ELIP_SNACK

Ce guide explique comment transformer le jeu web en application mobile native avec Capacitor.

## 🚀 Prérequis

### Pour Android :
- Node.js (v16 ou supérieur)
- Android Studio
- JDK 17

### Pour iOS :
- macOS
- Xcode 14+
- CocoaPods

## 📦 Installation

### 1. Installer les dépendances

```bash
npm install
```

### 2. Initialiser Capacitor (si pas déjà fait)

```bash
npx cap init
```

Répondre aux questions :
- App name: `ELIP_SNACK`
- App ID: `com.elipsnack.game`
- Web directory: `.`

### 3. Ajouter les plateformes

#### Pour Android :
```bash
npm run cap:add:android
```

#### Pour iOS :
```bash
npm run cap:add:ios
```

### 4. Synchroniser les fichiers

```bash
npm run cap:sync
```

## 🔧 Configuration

### Android

1. Ouvrir le projet Android :
```bash
npm run cap:open:android
```

2. Dans Android Studio :
   - Attendre que Gradle finisse de synchroniser
   - Configurer un émulateur ou connecter un appareil
   - Cliquer sur "Run" (▶️)

### iOS

1. Ouvrir le projet iOS :
```bash
npm run cap:open:ios
```

2. Dans Xcode :
   - Sélectionner votre équipe de développement
   - Choisir un simulateur ou appareil
   - Cliquer sur "Run" (▶️)

## 🎮 Fonctionnalités mobiles ajoutées

### Retour haptique
Le jeu utilise les vibrations pour :
- Manger une nourriture (vibration légère)
- Collecter un power-up (vibration moyenne)
- Game over (vibration forte)
- Changement de niveau (vibration moyenne)

### Barre de statut
- Style sombre pour correspondre au thème du jeu
- Couleur de fond personnalisée

### Bouton retour Android
- Géré pour quitter l'application proprement

### Contrôles tactiles
- Swipe pour diriger le serpent
- Optimisé pour les écrans tactiles

## 📝 Structure des fichiers

```
.
├── index.html              # Version web
├── index-mobile.html       # Version mobile avec Capacitor
├── package.json            # Dépendances npm
├── capacitor.config.json   # Configuration Capacitor
├── android/                # Projet Android (généré)
├── ios/                    # Projet iOS (généré)
└── README.md              # Documentation principale
```

## 🔄 Workflow de développement

1. Modifier `index-mobile.html`
2. Synchroniser les changements :
```bash
npm run cap:sync
```
3. Tester sur émulateur/appareil

## 📱 Build de production

### Android (APK)

1. Ouvrir Android Studio
2. Build → Generate Signed Bundle / APK
3. Suivre l'assistant pour créer un keystore
4. Générer l'APK signé

### iOS (IPA)

1. Ouvrir Xcode
2. Product → Archive
3. Distribuer via App Store Connect ou Ad Hoc

## 🐛 Dépannage

### Erreur Gradle (Android)
```bash
cd android
./gradlew clean
cd ..
npm run cap:sync
```

### Erreur CocoaPods (iOS)
```bash
cd ios/App
pod install
cd ../..
```

### Les changements ne s'affichent pas
```bash
npm run cap:sync
```
Puis relancer l'application

## 📚 Ressources

- [Documentation Capacitor](https://capacitorjs.com/docs)
- [Capacitor Android](https://capacitorjs.com/docs/android)
- [Capacitor iOS](https://capacitorjs.com/docs/ios)
- [Plugins Capacitor](https://capacitorjs.com/docs/plugins)

## 🎯 Prochaines étapes

- [ ] Ajouter des icônes d'application personnalisées
- [ ] Créer un splash screen animé
- [ ] Implémenter le partage de score
- [ ] Ajouter des achievements
- [ ] Intégrer un leaderboard en ligne
