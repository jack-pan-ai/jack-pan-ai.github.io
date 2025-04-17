# Academic Portfolio Website

A personal academic portfolio website built with HTML, CSS, and JavaScript to showcase research papers, education, skills, and contact information. This template is specifically designed for academic professionals, researchers, and PhD candidates.

## Features

- Responsive design that works on desktop, tablet, and mobile devices
- Modern and clean user interface
- Component-based architecture for easy maintenance
- Paper showcase with citations and links
- Downloadable CV
- Social media integration

## Technologies Used

- HTML5 with Server-Side Includes (SSI) for modularity
- CSS3 (with CSS variables for easy customization)
- JavaScript (ES6+)
- Font Awesome for icons
- Bash script for building the site

## Directory Structure

```
.
├── build.sh                # Build script to compile the website
├── index.html              # Main HTML file (generated from template)
├── styles.css              # Global CSS styles
├── script.js               # JavaScript functionality
├── CV.pdf                  # Your CV/resume file
├── icon.jpg                # Your profile picture
├── templates/              # HTML templates
│   └── index.html          # Main template with include directives
├── partials/               # Reusable HTML components
│   ├── general/            # Header, footer, etc.
│   ├── sections/           # Main content sections
│   └── papers/             # Paper components and styling
│       ├── paper1.html     # Individual paper examples
│       ├── paper2.html
│       ├── template.html   # Template for new papers
│       ├── paper_list.css  # Styles for paper listings
│       └── paper_details.css # Styles for detailed paper pages
```

## How to Use This Template

### 1. Setup the Environment

1. Clone this repository:
   ```bash
   git clone https://github.com/[your-username]/[repository-name].git
   cd [repository-name]
   ```

2. Make sure you have bash available (pre-installed on macOS and Linux, use Git Bash or WSL on Windows).

### 2. Customize Your Content

#### Basic Information

1. Update your personal information:
   - Edit `partials/general/header.html` with your name and title
   - Edit `partials/general/footer.html` with your social links
   - Replace `icon.jpg` with your own profile photo

2. Modify the About section:
   - Edit `partials/sections/about.html` with your bio
   - Update the path to your CV if needed (or replace the `CV.pdf` file)

3. Update your education background:
   - Edit `partials/sections/education.html` with your academic history

4. Update your skills:
   - Edit `partials/sections/skills.html` with your technical skills

5. Update contact information:
   - Edit `partials/sections/contact.html` with your contact details

#### Adding Papers

1. Use the template in `partials/papers/template.html` as a starting point
2. Create a new file for each paper in the `partials/papers/` directory (e.g., `paper3.html`)
3. Fill in your paper details:
   - Title
   - Authors
   - Publication venue and year
   - Abstract
   - Links to PDF, code, DOI, etc.
4. Include your new paper in the papers section:
   - Edit `partials/sections/papers.html` to add the include directive for your new paper:
     ```html
     <!--#include file="../papers/paper3.html" -->
     ```

### 3. Build the Website

Run the build script to compile the website:

```bash
chmod +x build.sh  # Make the script executable (only needed once)
./build.sh
```

This script processes all the include directives and generates the final `index.html` file.

### 4. Test Locally

Open the generated `index.html` file in your web browser to test the website.

### 5. Deployment Options

#### Option 1: GitHub Pages

1. Push your repository to GitHub:
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

2. Set up GitHub Pages:
   - Go to your repository on GitHub
   - Click on "Settings" → "Pages"
   - Select the branch you want to use (usually `main`)
   - Click "Save"
   - Your site will be published at `https://[your-username].github.io/[repository-name]/`

#### Option 2: Web Hosting

1. Build the website using the build script
2. Upload all files to your web hosting service using FTP or their upload tools:
   - index.html
   - styles.css
   - script.js
   - CV.pdf
   - icon.jpg
   - Any other assets (images, etc.)

#### Option 3: Server with SSI Support

If your web server supports Server-Side Includes (like Apache with SSI module):

1. Upload all files including the template and partials
2. Configure your server to process SSI directives (usually by enabling the `Includes` option)
3. Make sure your HTML files are processed as SSI files (may require `.shtml` extension or server configuration)

## Customizing Styles

### Color Scheme and Design

1. Edit the CSS variables in `styles.css` to change the global color scheme
2. Paper-specific styles can be modified in:
   - `partials/papers/paper_list.css` for the list of papers
   - `partials/papers/paper_details.css` for detailed paper pages

## Troubleshooting

- **Build script fails**: Make sure the script has execute permissions (`chmod +x build.sh`)
- **Includes not working**: The build script processes includes locally. For direct server processing, ensure your server supports SSI
- **Styling issues**: Check the browser console for CSS errors

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Font Awesome for the icons
- Academic website best practices from leading researchers' sites 