# HTTrack-Termux
HTTrack-Termux-Guide: Your one-stop guide for installing and using HTTrack on Termux. Clone websites effortlessly with easy-to-follow commands."


# HTTrack Installation Guide

Follow these steps to install and use HTTrack on Termux:

## Commands

1. Update and upgrade your Termux:
    ```bash
    apt update && apt upgrade
    ```

2. Setup storage for Termux:
    ```bash
    termux-setup-storage
    ```

3. Install HTTrack:
    ```bash
    apt install httrack
    ```

4. Alternative command to install HTTrack:
    ```bash
    pkg install httrack
    ```

5. Check HTTrack help:
    ```bash
    httrack --help
    ```

6. Clone a website (replace 'websitename' with the actual site):
    ```bash
    httrack websitename
    ```

### Quickly Install Command
  ```bash
  pkg install git && git clone https://github.com/rehan5039/HTTrack-Termux.git && cd HTTrack-Termux && chmod +x Quick_Install.sh && ./Quick_Install.sh
  ```


## Features

- **Offline Website Cloning:** HTTrack allows you to download a website to your local machine, including all its pages, images, and other assets, so you can browse it offline.

- **Customizable Styles:** The provided HTML and CSS styles are customizable. Feel free to modify them to suit your preferences or integrate the tool seamlessly into your projects.

## Additional Information

To install wget and recursively download websites using wget, you can follow these steps:

## Install wget
```
pkg install wget
```
## Recursively download websites
```
wget -r [website_url]
```
Replace `[website_url]` with the actual URL of the website you want to download recursively.

Make sure to replace `[website_url]` with the actual URL you want to download.

Usage: wget [OPTION]... [URL]...

Try `wget --help' for more options.

## step by step guide
1. **Install Termux**: If you haven't already, install the Termux app from the Google Play Store.

2. **Install Wget**: Open Termux and install Wget by running the following command:
   ```
   pkg install wget
   ```

3. **Clone Website**: Use Wget to clone the website you want. For example, to clone the website "example.com", you would run:
   ```
   wget --mirror -p --convert-links -P ./example.com http://example.com
   ```

4. **Create GitHub Repository**: Go to GitHub and create a new repository. Make sure it's empty.

5. **Initialize Git in the Cloned Directory**: Navigate to the directory where you cloned the website using Termux and initialize Git by running:
   ```
   cd example.com
   git init
   ```

6. **Add Files and Commit**: Add all the cloned files to the Git repository and commit them:
   ```
   git add .
   git commit -m "Initial commit"
   ```

7. **Push to GitHub**: Link your local repository to the GitHub repository and push the code:
   ```
   git remote add origin <GitHub repository URL>
   git push -u origin master
   ```

Replace `<GitHub repository URL>` with the URL of your GitHub repository.

That's it! Your website clone should now be in your GitHub repository.


## Additional
- To view the source of a website, use:
  ```bash
  view-source:website-link
  ```
  Example:
  ```bash
  view-source:https://github.com/rehan5039
  ```

## More Additional
To clone a website and run your local host, follow these steps:

1. Install necessary packages:
```
pkg install curl
pkg install php
```

2. Clone the website:
```
curl https://www.youtube.com > index.html
```

3. Run a local server:
```
php -S 127.0.0.1:8080
```
  
**HTTrack-Termux-Guide**:

This GitHub repository serves as a comprehensive guide and tool for utilizing HTTrack on Termux. Here's what you'll find:

- **Installation Commands**: Simple commands to update Termux, set up storage, and install HTTrack.
  
- **Usage Instructions**: Learn how to clone websites using HTTrack with step-by-step commands.

- **Features**:
  - Copy commands with a click.
  - Stylish buttons for various operations.
  - Clear and concise steps for a smooth experience.

Feel free to explore, contribute, and enhance your website cloning capabilities with HTTrack on Termux!


## Additional Command

- To specify the output directory for the mirrored website:
```bash
httrack <website-url> -O /path/to/output-directory
```

- To set the maximum number of connections:
```bash
httrack <website-url> -#N
```
Replace N with the desired number of connections.

- To set the maximum depth of the mirror (how many levels deep to follow links):
```bash
httrack <website-url> -rN
```
Replace N with the desired depth.

These commands will help you customize your website mirroring process according to your needs.


- To limit the download speed:
```bash
httrack <website-url> --limit-rate=KB/s
```
Replace KB/s with the desired download speed limit.

- To continue an interrupted download:
```bash
httrack --continue
```

- To mirror only specific file types:
```bash
httrack <website-url> '+*.filetype'
```
Replace `.filetype` with the desired file extension.


- To specify a log file for recording download progress:
```bash
httrack <website-url> -%L log.txt
```

- To mirror a website while following external links (off-site):
```bash
httrack <website-url> -%e0
```

- To mirror a website while staying within the same domain:
```bash
httrack <website-url> -%e1
```

- To set a user agent:
```bash
httrack <website-url> -%u "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
```

- To mirror a website with depth priority (mirroring only specified depth):
```bash
httrack <website-url> -r3
```
Replace 3 with the desired depth.

- To mirror a website with specified domains:
```bash
httrack <website-url> -%A php.net/ -%A python.org/
```
Replace php.net/ and python.org/ with the desired domains.


- To mirror a website with custom timeout settings:
```bash
httrack <website-url> --timeout=30
```
Replace 30 with the desired timeout value in seconds.

- To mirror a website with custom proxy settings:
```bash
httrack <website-url> --proxy=proxy.example.com:8080
```
Replace proxy.example.com:8080 with your proxy server address and port.


- To mirror a website with custom user-defined structures:
```bash
httrack <website-url> -%P -%qC2t%Pns0u1%s%uN0%I0p3DaK0H0%kf2A25000%f#f -F "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -%A php.net/ -%A python.org/
```

- To mirror a website with verbose logging:
```bash
httrack <website-url> -v
```

- To mirror a website with custom connection timeout:
```bash
httrack <website-url> --timeout=60
```
Replace 60 with the desired timeout value in seconds.

- To limit the depth of mirroring while following external links:
```bash
httrack <website-url> -r4 --ext-depth=2
```
Replace 4 with the maximum depth of mirroring and 2 with the maximum external depth.


- To mirror a website with custom connection retries:
```bash
httrack <website-url> --retries=5
```
Replace 5 with the desired number of retries.

- To mirror a website while ignoring robots.txt rules:
```bash
httrack <website-url> -%k
```

- To mirror a website with custom user agent:
```bash
httrack <website-url> -%u "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
```

- To mirror a website with custom download bandwidth:
```bash
httrack <website-url> --max-rate=100K
```
Replace 100K with the desired maximum download rate.

- To mirror a website with custom limits on the number of connections:
```bash
httrack <website-url> --max-connections=5
```
Replace 5 with the desired maximum number of connections.

- To mirror a website while preserving the directory structure:
```bash
httrack <website-url> -%c2
```

#### Don't Use
  ```bash
  pkg install git && git clone https://github.com/rehan5039/HTTrack-Termux.git && cd HTTrack-Termux && chmod +x install_httrack.sh && ./install_httrack.sh
  ```

# HTTrack: Website Mirror Utility

## Description
HTTrack is a versatile website mirror utility designed to facilitate downloading entire websites from the internet to a local directory. It recursively builds all structures, retrieves HTML, images, and other files from the server to your computer. The utility ensures that links are rebuilt relatively, enabling seamless browsing of the local site with any browser. It supports mirroring multiple sites concurrently, allowing easy navigation between them. Additionally, HTTrack offers features to update existing mirror sites and resume interrupted downloads. The robot's behavior is fully configurable and includes integrated help documentation.

## Features
- Recursively downloads entire websites
- Retains directory structure
- Retrieves HTML, images, and other files
- Builds links relatively for local browsing
- Supports mirroring multiple sites simultaneously
- Updates existing mirror sites
- Resumes interrupted downloads
- Configurable robot behavior
- Integrated help documentation

# Download Website
The programs mentioned below can serve this purpose very well. The options are straightforward enough that you can begin downloading an entire website in just a couple of minutes.

## Getleft
