# 📜 Scripts Explained (For Beginners)

This page explains what each script does in plain English. No tech degree required!

---

## Where Are the Scripts?

All scripts live in the `scripts` folder. Think of them as little helper robots that do tasks for you.

```
scripts/
├── update.sh          ← Updates everything
├── check-updates.sh   ← Shows what updates are available (doesn't install them)
└── start-server.sh    ← Starts your website locally to preview it
```

---

## 🔄 update.sh — The Main Update Script

**What it does:** Downloads and installs the latest updates for your website.

**When to use it:** Run this once a week, or whenever you're told there's an update available.

**How to run it:**
```bash
./scripts/update.sh
```

**What happens when you run it:**
1. Checks your internet connection
2. Looks for new versions of the code packages
3. Downloads and installs updates
4. Shows you a summary of what changed

**Is it safe?** Yes! This script only updates code packages. It does NOT change your business info, colors, or content.

---

## 🔍 check-updates.sh — The "Just Looking" Script

**What it does:** Shows you what updates are available WITHOUT installing them.

**When to use it:** When you're curious if there are updates, but not ready to install yet.

**How to run it:**
```bash
./scripts/check-updates.sh
```

**What happens when you run it:**
1. Looks at all the code packages your site uses
2. Compares them to the latest versions available
3. Shows you a list of what could be updated

**Is it safe?** 100% safe. This script only LOOKS—it doesn't change anything.

---

## 🚀 start-server.sh — The Preview Script

**What it does:** Starts your website on your own computer so you can see it in your browser.

**When to use it:** When you want to preview your website before it goes live.

**How to run it:**
```bash
./scripts/start-server.sh
```

**What happens when you run it:**
1. Starts a mini web server on your computer
2. Opens your website at `http://localhost:4321`
3. Keeps running until you stop it

**How to stop it:** Press `Ctrl + C` on your keyboard (hold Control and press C).

**Is it safe?** Yes! This only runs on YOUR computer. No one else can see it.

---

## Common Questions

### Q: What if I run the wrong script?
**A:** No worries! None of these scripts can break your website. The worst that happens is you might need to wait for something to download.

### Q: How do I know if it worked?
**A:** Each script will show you messages as it runs. Look for ✅ checkmarks or "Success" messages at the end.

### Q: What does "permission denied" mean?
**A:** Your computer is being cautious. Run this command once to give permission:
```bash
chmod +x ./scripts/*.sh
```
Then try your script again.

### Q: Can I undo an update?
**A:** Yes, but it's a bit more advanced. Contact your support team if you need to roll back an update.

---

## Still Confused?

That's totally okay! Here are your options:

1. **Ask for help** — Contact your website administrator
2. **Don't touch anything** — Your website will keep working fine
3. **Try the update script** — It's safe and you can always ask for help after

Remember: You can't break anything by running these scripts. They're designed to be safe! 💪
