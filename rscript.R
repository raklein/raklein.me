# Following https://tclavelle.github.io/blog/blogdown_github/
# Builds webpage in blogdown, pushes files to GitHub, and then Netlify knits them into raklein.me (using custom domain)
# After source files are on GitHub, here's directions to publish on Netlify: https://bookdown.org/yihui/blogdown/netlify.html

# Many lines below commented out because they are only run once
# and then files are manually edited (e.g., will be overwritten if you run this)
# from the start!

# Assumes you've already cloned https://github.com/raklein/raklein.me/
# Run this line to pull any updates from the master branch
#git pull origin master

# Don't need to setwd since we're using an R Project file

# Load blogdown package and install Hugo
library(blogdown)
#install_hugo()

# To make the site you would run this line, but we've already done this.
# Needs to be in an empty directory if you want to start from scratch.
#new_site(theme = 'kakawait/hugo-tranquilpeak-theme')

# Create a new post
# new_post(title = 'datacheck.Rmd', ext = ".Rmd")

# Serve site to generate the webpage.
# Click the button next to the broom in the viewer to open in a browser.
serve_site()

# To deploy to web:
# Below command renders the site into "public" publishDir = "../raklein.me" in config.toml
# I'm not sure this is even necessary given our netlify workflow.
build_site()

# To commit to github pages, use the "Git" window in R Studio. First Commit, then Push.
# You can also use terminal (note: not 'console') commands as a shortcut.
#git add --all
#git commit -m "Commit message here"
#git push -u origin master