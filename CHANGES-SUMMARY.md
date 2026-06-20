# What Changed - Quick Reference

## Summary
Added UBC Software Development Certificate to your portfolio website.

## Files to Upload
You only need to upload these 2 files to your server:
1. **index.html**
2. **styles.css**

Both files are in this folder and ready to upload.

---

## Changes Made

### 1. Navigation Menu (index.html)
Added "Education" link between "Projects" and "Contact"

### 2. Education Section (index.html)
New section added after GitHub Activity section containing:
- Certificate icon
- "Software Development Certificate" title
- "University of British Columbia (UBC)" institution name
- Program description
- "Certified" badge

### 3. Styling (styles.css)
Added complete styling for:
- .education section
- .education-grid
- .education-card (with hover effects)
- .education-icon
- .education-badge
- Mobile responsive styles
- Dark theme support

---

## Quick Upload Options

### Option A: Use the Deploy Script
1. Open `deploy-to-server.ps1`
2. Edit the configuration at the top (username, IP, path)
3. Run: `.\deploy-to-server.ps1`

### Option B: Manual Upload via SFTP
1. Open your SFTP client (FileZilla, WinSCP, etc.)
2. Connect to your server
3. Navigate to your website folder
4. Drag and drop `index.html` and `styles.css`
5. Overwrite existing files

### Option C: SSH + SCP Command
```powershell
scp index.html styles.css username@server-ip:/path/to/website/
```

---

## After Uploading
1. Clear browser cache: **Ctrl + Shift + R**
2. Visit: https://moodyspritestudios.com
3. Look for "Education" in the navigation menu
4. Scroll down to see the Education section

---

## Need Help?
See `DEPLOY-TO-SERVER.md` for detailed instructions and troubleshooting.
