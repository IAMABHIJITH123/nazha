# Push this project to GitHub

## 1. Create a new GitHub repository

1. Go to https://github.com/new
2. Choose a repository name, e.g. `nazha-music`
3. Set visibility to Public or Private
4. Do NOT initialize with a README, .gitignore, or license if you will push an existing project
5. Click Create repository

## 2. Initialize this folder as a Git repository

Open PowerShell in the project root and run:

```powershell
cd "C:\Users\abhijiths\Downloads\YMusic-Youtube-Multilingual-Music-Player-for-Android-master\YMusic-Youtube-Multilingual-Music-Player-for-Android-master"
git init
```

## 3. Add files and commit

```powershell
git add .
git commit -m "Initial Nazha Music project import"
```

## 4. Add the GitHub remote

Replace `<USERNAME>` and `<REPO>` with your GitHub username and repo name:

```powershell
git remote add origin https://github.com/<USERNAME>/<REPO>.git
```

## 5. Push to GitHub

```powershell
git branch -M main
git push -u origin main
```

## 6. (Optional) Push workflow and APK build support

Your repository already contains `.github/workflows/android.yml`, so once it is pushed the workflow will run automatically on your next commit.

## Notes

- If Git asks for username/password, use a personal access token instead of your password.
- If you prefer SSH, use the SSH remote URL instead:
  `git remote add origin git@github.com:<USERNAME>/<REPO>.git`
