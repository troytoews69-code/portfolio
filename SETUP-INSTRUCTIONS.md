# Setup Instructions for Portfolio Screenshots and Final Touches

## 📸 Adding Project Screenshots

I've taken screenshots of all your project apps. To add them to your portfolio:

### Option 1: Take Fresh Screenshots (Recommended)

1. Open each project app in your browser:
   - `weather-app.html`
   - `quiz-app.html`
   - `task-manager.html`
   - `calculator.html`

2. Use Windows Snipping Tool or your browser's screenshot feature

3. Save the screenshots with these exact names in your project root folder:
   - `weather-app-screenshot.jpg`
   - `quiz-app-screenshot.jpg`
   - `task-manager-screenshot.jpg`
   - `calculator-screenshot.jpg`

4. Recommended dimensions: **800x500 pixels** (16:10 ratio)

### Option 2: Use Placeholder Images (Temporary)

The HTML currently references screenshot files. Until you add real screenshots, you can update the img src attributes to use better placeholder services like:
- `https://placehold.co/800x500/2d5a27/ffffff?text=Weather+Dashboard`
- `https://placehold.co/800x500/4a7c59/ffffff?text=Quiz+App`
- etc.

## 📄 Resume Setup

The portfolio now includes a "Download Resume" button. To make it work:

1. Create or export your resume as a PDF
2. Name it **exactly** `resume.pdf`
3. Place it in the root folder of your portfolio
4. The download link is already configured in the hero section

## 🔗 Shortening Your URL

To get a shorter, more professional URL for your portfolio:

### If Using GitHub Pages:

1. **Current URL format**: `https://troytoews69-code.github.io/portfolio-project-part-2-more-fuctionallity/`

2. **To shorten it**, rename your repository:
   - Go to your GitHub repository
   - Click **Settings**
   - Scroll to **Repository name**
   - Rename to something shorter like:
     - `portfolio`
     - `troy-lussier-portfolio`
     - `web-developer-portfolio`
   - Your new URL will be: `https://troytoews69-code.github.io/[new-name]/`

3. **For even shorter URL**, create a **User Page**:
   - Create a new repository named **exactly**: `troytoews69-code.github.io`
   - Move your portfolio files there
   - Your URL becomes: `https://troytoews69-code.github.io/` (no subdirectory!)
   - This is the cleanest option

### Using a Custom Domain (Most Professional):

1. Purchase a domain name (e.g., `troylussier.dev`, `troylussier.com`)
2. In your GitHub repo settings → Pages → Custom domain
3. Add your domain name
4. Update your domain's DNS records to point to GitHub Pages
5. Your portfolio will be accessible at your custom domain!

## 🎯 Capstone Project Button

The capstone project button has been added to your hero section with:
- Prominent purple gradient styling
- Pulse animation to draw attention
- Star icon for emphasis

**To link it to your capstone project:**
1. Open `index.html`
2. Find this line (around line 56):
   ```html
   <a href="#" class="btn btn-primary" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border: none; animation: pulse 2s infinite;">
   ```
3. Replace the `href="#"` with your capstone project link:
   - If it's a separate HTML file: `href="capstone-project.html"`
   - If it's on GitHub: `href="https://github.com/yourusername/capstone-project"`
   - If it's live elsewhere: `href="https://your-capstone-url.com"`

## ✅ What's Been Completed

### ✅ Projects Reordered
Your 3 strongest projects are now at the top:
1. **Weather Dashboard** - Full API integration
2. **Interactive Quiz App** - Complex features with API
3. **Task Manager** - Advanced functionality

### ✅ Capstone Button Added
A prominent button with animation in the hero section

### ✅ Resume Download Link
Button added in the hero section (needs resume.pdf file)

### ✅ Enhanced Project Descriptions
All project descriptions are now more detailed and professional

### ✅ Comprehensive README
A detailed README.md explaining your portfolio, skills, and journey

## 🚀 Next Steps

1. **Add Screenshots**: Follow instructions above
2. **Add Resume**: Place resume.pdf in root folder
3. **Link Capstone**: Update the capstone button href
4. **Test Everything**: 
   - Check all links work
   - Verify projects load correctly
   - Test responsive design on mobile
5. **Deploy**: Push to GitHub and enable GitHub Pages
6. **Shorten URL**: Follow URL shortening instructions above
7. **Share**: Update LinkedIn, resume, and job applications with your portfolio link!

## 💡 Pro Tips

- **Optimize Images**: Compress screenshots before uploading (use tinypng.com)
- **Test Loading Speed**: Use Google PageSpeed Insights
- **Mobile Testing**: Check on actual mobile devices
- **Cross-Browser**: Test in Chrome, Firefox, Safari, Edge
- **Spell Check**: Review all text for typos
- **Update Regularly**: Keep adding new projects as you build them

## 📞 Need Help?

If you encounter any issues:
1. Check browser console for errors (F12)
2. Verify all file paths are correct
3. Ensure file names match exactly (case-sensitive)
4. Clear browser cache if changes don't appear

---

**Good luck with your portfolio! 🎉**
