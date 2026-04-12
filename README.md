# Pakistan Tourism Portal

A modern, responsive, multi-page website dedicated to promoting local tourism destinations and travel packages across Pakistan.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Team Members](#team-members)
- [Project Structure](#project-structure)
- [Pages Overview](#pages-overview)
- [Getting Started](#getting-started)
  - [Local Development](#local-development)
  - [Production Build](#production-build)
  - [Docker Deployment](#docker-deployment)
- [Git Workflow](#git-workflow)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)

---

## Project Overview

The Pakistan Tourism Portal is a collaborative static website designed to showcase the diverse and breathtaking destinations across Pakistan. It serves as a gateway for tourists to explore popular destinations, browse curated travel packages, view stunning photography, and get in touch with tourism experts. The website emphasizes responsive design, accessibility, and an engaging user experience to inspire travelers to discover Pakistan's natural beauty and cultural heritage.

---

## Team Members

| Sr# | Name               | Role      | Branch | Page              | Docker Image |
| --- | ------------------ | --------- | ------ | ----------------- | ------------ |
| 1   | Tajamal Hussain    | Team Lead | Main   | Home (index.html) | nginx:latest |
| 2   | Hamayun Awan       | Developer | Dev    | Destinations      | nginx:latest |
| 3   | Aleeza Ejaz        | Developer | Dev    | Packages          | nginx:latest |
| 4   | Nabeel Ijaz        | Developer | Dev    | Gallery           | nginx:latest |
| 5   | Muhammad Mutiullah | Developer | Dev    | Contact           | nginx:latest |

---

## Project Structure

```
campus-events/
├── .gitignore
├── .dockerignore
├── Dockerfile
├── package.json
├── README.md
├── src/
│   ├── index.html          # Home page - main landing page
│   ├── destination.html    # Destinations showcase page
│   ├── packages.html       # Tour packages page
│   ├── gallery.html        # Photo gallery page
│   └── contact.html        # Contact form page
└── styles/
    └── style.css           # Global stylesheet for all pages
```

---

## Pages Overview

| File Name        | Page Name    | Description                                                                                |
| ---------------- | ------------ | ------------------------------------------------------------------------------------------ |
| index.html       | Home         | Main landing page with hero section, featured destinations, statistics, and call-to-action |
| destination.html | Destinations | Detailed destination listings with descriptions, locations, and booking options            |
| packages.html    | Packages     | Curated tour packages with itineraries, pricing, and availability                          |
| gallery.html     | Gallery      | Photo showcase of Pakistan's most scenic and cultural locations                            |
| contact.html     | Contact      | Contact form and information for customer inquiries and support                            |

---

## Getting Started

### Local Development

**Prerequisites:**

- Node.js (v14 or higher)
- npm (v6 or higher)

**Steps:**

1. Clone the repository:

```bash
git clone https://github.com/yourusername/campus-events.git
cd campus-events
```

2. Install dependencies:

```bash
npm install
```

3. Start the development server:

```bash
npm start
```

4. Open your browser and navigate to:

```
http://localhost:1234
```

The page will automatically reload when you make changes to the source files.

### Production Build

1. Build the project for production:

```bash
npm run build
```

2. The optimized files will be generated in the `dist/` directory:

```
dist/
├── index.html
├── destination.html
├── packages.html
├── gallery.html
├── contact.html
└── style.css
```

3. Deploy the `dist/` folder to your hosting service.

### Docker Deployment

**Prerequisites:**

- Docker installed on your system

**Steps:**

1. Build the Docker image:

```bash
docker build -t pakistan-tourism:latest .
```

2. Run the container:

```bash
docker run -d -p 8080:80 --name tourism-portal pakistan-tourism:latest
```

3. Open your browser and navigate to:

```
http://localhost:8080
```

4. To stop the container:

```bash
docker stop tourism-portal
```

5. To remove the container:

```bash
docker rm tourism-portal
```

---

## Git Workflow

This project follows a structured Git workflow to ensure code quality and organized development:

1. **Feature Development:**
   - Create a feature branch from `develop`: `git checkout -b feature/your-feature-name develop`
   - Make your changes and commit regularly with descriptive messages
   - Push to the remote feature branch: `git push origin feature/your-feature-name`

2. **Pull Request (PR):**
   - Open a pull request from your feature branch to `develop`
   - Request code review from team members
   - Address feedback and make necessary changes
   - PR should be merged only after approval

3. **Development Branch (`develop`):**
   - All tested features are merged here
   - Acts as the staging environment for the next release
   - Must be stable and deployment-ready

4. **Release Preparation:**
   - Create a release branch: `git checkout -b release/v1.0.0 develop`
   - Update version numbers and documentation
   - Fix any last-minute bugs
   - Merge back to `develop` and to `main`

5. **Main Branch (`main`):**
   - Contains production-ready code
   - Only receives merges from release branches
   - Each commit should be tagged with a version number: `git tag v1.0.0`

**Branch naming conventions:**

- Feature: `feature/feature-name`
- Bugfix: `bugfix/issue-description`
- Release: `release/v1.0.0`
- Hotfix: `hotfix/critical-issue`

---

## Technologies Used

| Technology | Version | Purpose                                          |
| ---------- | ------- | ------------------------------------------------ |
| HTML5      | Latest  | Semantic markup and page structure               |
| CSS3       | Latest  | Styling, responsive design, animations           |
| JavaScript | ES6+    | Interactivity (hamburger menu, smooth scrolling) |
| Parcel     | 2.16.4  | Build tool and module bundler                    |
| Docker     | Latest  | Containerization and deployment                  |
| Nginx      | Latest  | Web server for production                        |
| GitHub     | Latest  | Version control and collaboration                |

---

## Contributing

We welcome contributions from all team members. Please follow these guidelines:

1. **Code Standards:**
   - Write semantic HTML
   - Use CSS classes with clear naming conventions
   - Keep JavaScript vanilla (no frameworks unless approved)
   - Ensure responsive design (mobile-first approach)

2. **Commit Messages:**
   - Use descriptive, present-tense messages
   - Example: `Add hero section to home page` instead of `Added hero`

3. **Testing:**
   - Test your changes on multiple devices and browsers
   - Verify responsive design at breakpoints: 1200px, 768px, 480px
   - Check cross-browser compatibility (Chrome, Firefox, Safari, Edge)

4. **Documentation:**
   - Update README.md when adding new sections or features
   - Add comments for complex JavaScript logic
   - Document CSS utility classes in style.css

---

## License

This project is licensed under the ISC License. See the LICENSE file for details.

---

**Last Updated:** April 2024  
**Maintained by:** Pakistan Tourism Team
