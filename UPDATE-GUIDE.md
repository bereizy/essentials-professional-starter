# 🔄 How to Update Your Website

Hey there! This guide will help you keep your website up-to-date. Don't worry—it's easier than it sounds!

---

## What Does "Updating" Mean?

Think of your website like a phone. Just like your phone gets updates to fix bugs and add new features, your website needs updates too. These updates:

- 🛡️ Keep your site secure
- 🐛 Fix any bugs or glitches
- ✨ Add new features and improvements

---

## Before You Start

You'll need to open the **Terminal** app on your computer. Here's how:

### On Mac:
1. Press `Command + Space` on your keyboard
2. Type "Terminal"
3. Press Enter

### On Windows:
1. Press the Windows key
2. Type "Command Prompt" or "PowerShell"
3. Press Enter

---

## The Easy Way: Run Our Update Script

We made a super simple script that does everything for you!

### Step 1: Open Terminal (see above)

### Step 2: Go to your website folder

Copy and paste this command, then press Enter:

```
cd ~/path/to/your-website-folder
```

**💡 Tip:** Replace `path/to/your-website-folder` with wherever your website lives. If you're not sure, ask whoever set up your website!

### Step 3: Run the update script

Copy and paste this command, then press Enter:

```
./scripts/update.sh
```

**✨ Even easier:** The script is smart! It knows where it lives, so you can also just double-click the `update.sh` file in Finder (Mac) or Explorer (Windows).

### Step 4: That's it! 🎉

The script will:
- ✅ Check for updates
- ✅ Download new versions
- ✅ Tell you what changed

---

## What If Something Goes Wrong?

### "Permission denied" error?

Run this command first, then try again:
```
chmod +x ./scripts/update.sh
```

### "Command not found" error?

Make sure you're in the right folder. Run:
```
pwd
```
This shows you where you are. You should see something with `essentials-professional-starter` at the end.

### Still stuck?

Don't panic! Contact your website administrator or support team. Nothing is broken—we just need to help you get pointed in the right direction.

---

## Want to Know More?

Check out these other guides:
- [SCRIPTS-EXPLAINED.md](./SCRIPTS-EXPLAINED.md) - What each script does
- [README.md](./README.md) - General info about your website

---

## Glossary (Big Words Explained)

| Word | What It Means |
|------|---------------|
| **Terminal** | A text-based app where you type commands to control your computer |
| **Script** | A file that runs a bunch of commands automatically for you |
| **npm** | A tool that downloads code packages your website needs |
| **Dependencies** | Code packages that your website uses to work properly |
| **Repository** | A folder that stores all your website's files and tracks changes |

---

Made with ❤️ to keep things simple
