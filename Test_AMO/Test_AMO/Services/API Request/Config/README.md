# Configuration des clés API

Ce dossier contient les fichiers de configuration pour les clés API.

## ⚠️ IMPORTANT : Secrets à ne pas commiter

Les fichiers suivants **NE DOIVENT JAMAIS** être commités dans Git :
- `Debug.xcconfig`
- `Release.xcconfig`

## 📋 Configuration initiale

Pour configurer votre environnement local :

### 1. Créer les fichiers de configuration

Copiez les fichiers template et renommez-les :

```bash
# Depuis le dossier Config/
cp Debug.xcconfig.example Debug.xcconfig
cp Release.xcconfig.example Release.xcconfig
```

### 2. Ajouter votre clé API

Ouvrez les fichiers `Debug.xcconfig` et `Release.xcconfig` et remplacez les placeholders par vos vraies clés API Pexels :

```
API_KEY_VALUE = votre_clé_api_pexels_ici
```

### 3. Vérifier que les fichiers ne sont pas trackés

Vérifiez que Git ignore bien ces fichiers :

```bash
git status
```

Les fichiers `Debug.xcconfig` et `Release.xcconfig` ne doivent **PAS** apparaître dans la liste des fichiers modifiés.

## 🔍 Vérification

Si vous voyez ces fichiers dans `git status`, cela signifie qu'ils sont encore trackés. Dans ce cas :

```bash
git rm --cached "Test_AMO/Test_AMO/Services/API Request/Config/Debug.xcconfig"
git rm --cached "Test_AMO/Test_AMO/Services/API Request/Config/Release.xcconfig"
```

## 📝 Fichiers disponibles

- `Config.xcconfig` : Configuration de base (à commiter ✅)
- `Debug.xcconfig.example` : Template pour la configuration Debug (à commiter ✅)
- `Release.xcconfig.example` : Template pour la configuration Release (à commiter ✅)
- `Debug.xcconfig` : Votre configuration Debug locale (NE PAS COMMITER ❌)
- `Release.xcconfig` : Votre configuration Release locale (NE PAS COMMITER ❌)

