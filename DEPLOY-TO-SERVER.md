# Deployment Guide - UBC Certificate Update

## Files Changed
The following files need to be uploaded to your server:

### Required Files (MUST upload):
1. ✅ **index.html** - Main portfolio page with Education section
2. ✅ **styles.css** - Styling for Education section (already updated)

### Optional Certificate Files (if you want to display them):
3. CircuitStreamCertifiedSoftwareDeveloperUniversityofBritishColumbiaExtendedLearning_Badge20260620-32-uf2bsc.pdf
4. circuit-stream-certified-software-developer-univers.png
5. circuit-stream-certified-software-developer-univers (1).png

---

## Manual Upload Instructions

### Using SFTP/FTP Client (FileZilla, WinSCP, etc.):
1. Connect to your server
2. Navigate to your website root directory (where your portfolio is hosted)
3. Upload `index.html` and `styles.css` (overwrite existing files)
4. Clear browser cache and refresh: Ctrl + Shift + R

### Using SSH/SCP:
```bash
# From this directory, upload to your server:
scp index.html styles.css your-username@your-server-ip:/path/to/website/
```

---

## Quick Deploy Script (if you have SSH access)

**SECURITY NOTE:** For security, credentials are kept locally and NOT committed to GitHub.

1. Copy the template file:
   ```powershell
   Copy-Item deploy-to-server.template.ps1 deploy-to-server.ps1
   ```

2. Edit `deploy-to-server.ps1` (this file is in .gitignore)
   - Update SERVER_USER, SERVER_IP, and SERVER_PATH
   - Save the file

3. Run the script:
   ```powershell
   .\deploy-to-server.ps1
   ```

---

## Verification Checklist
- [ ] index.html uploaded
- [ ] styles.css uploaded  
- [ ] Browser cache cleared (Ctrl + Shift + R)
- [ ] Website refreshed
- [ ] "Education" link appears in navigation menu
- [ ] Education section visible between GitHub Activity and Contact sections

---

## Troubleshooting
- **Still not showing?** Check Nginx configuration and restart: `sudo systemctl restart nginx`
- **Permission errors?** Ensure files have correct permissions: `chmod 644 index.html styles.css`
- **Cache issues?** Try incognito mode or different browser
