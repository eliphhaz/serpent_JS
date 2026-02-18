# ✅ Checklist - Test de la version mobile

## 📋 Avant de commencer

- [ ] Node.js est installé (`node --version`)
- [ ] npm est installé (`npm --version`)
- [ ] Le jeu fonctionne dans le navigateur (`start index.html`)

## 🔧 Installation

- [ ] Exécuter `npm install`
- [ ] Vérifier qu'il n'y a pas d'erreurs
- [ ] Les dossiers `node_modules` est créé

## 📱 Configuration Android (si applicable)

- [ ] Android Studio est installé
- [ ] JDK 17 est installé
- [ ] Exécuter `npm run cap:add:android`
- [ ] Le dossier `android/` est créé
- [ ] Exécuter `npm run cap:sync`
- [ ] Exécuter `npm run cap:open:android`
- [ ] Android Studio s'ouvre sans erreur

## 🍎 Configuration iOS (si applicable - Mac uniquement)

- [ ] Xcode est installé
- [ ] CocoaPods est installé (`pod --version`)
- [ ] Exécuter `npm run cap:add:ios`
- [ ] Le dossier `ios/` est créé
- [ ] Exécuter `npm run cap:sync`
- [ ] Exécuter `npm run cap:open:ios`
- [ ] Xcode s'ouvre sans erreur

## 🎮 Test du jeu

### Dans le navigateur mobile
- [ ] Ouvrir index.html sur un téléphone
- [ ] Le jeu s'affiche correctement
- [ ] Les contrôles tactiles fonctionnent (swipe)
- [ ] Le jeu est responsive
- [ ] Pas de problème de zoom

### Dans l'app native (après build)
- [ ] L'app se lance
- [ ] Le splash screen s'affiche
- [ ] Le jeu s'affiche correctement
- [ ] Les contrôles tactiles fonctionnent
- [ ] Les vibrations fonctionnent (si implémentées)
- [ ] La barre de statut est correcte
- [ ] Le bouton retour fonctionne (Android)

## 🐛 Résolution de problèmes

### Erreur "npm not found"
```bash
# Installer Node.js depuis https://nodejs.org/
```

### Erreur lors de npm install
```bash
# Supprimer node_modules et réessayer
rmdir /s /q node_modules
npm install
```

### Erreur Gradle (Android)
```bash
cd android
gradlew clean
cd ..
npm run cap:sync
```

### L'app ne se met pas à jour
```bash
# Copier les fichiers et resynchroniser
copy index.html www\index.html
npm run cap:sync
# Puis relancer l'app
```

## 📊 Résultats attendus

### ✅ Succès si :
- L'app se lance sans crash
- Les contrôles fonctionnent
- Le jeu est jouable
- Les performances sont bonnes

### ⚠️ À améliorer si :
- L'app est lente
- Les contrôles sont imprécis
- L'interface est mal alignée

### ❌ Problème si :
- L'app crash au démarrage
- Les contrôles ne fonctionnent pas
- L'écran est noir

## 📝 Notes de test

Date du test : _______________

Appareil testé : _______________

Version Android/iOS : _______________

Résultat : ⭕ Succès / ⭕ Échec

Commentaires :
_________________________________
_________________________________
_________________________________

## 🎯 Prochaines étapes après succès

1. [ ] Personnaliser l'icône de l'app
2. [ ] Créer un splash screen personnalisé
3. [ ] Ajouter les vibrations haptiques
4. [ ] Tester sur plusieurs appareils
5. [ ] Optimiser les performances
6. [ ] Préparer pour les stores

## 📞 Support

Si tu rencontres des problèmes :
1. Consulte `CAPACITOR_SETUP.md`
2. Vérifie `QUICK_START_MOBILE.md`
3. Visite https://capacitorjs.com/docs
4. Cherche l'erreur sur Google/Stack Overflow

Bon test ! 🚀
