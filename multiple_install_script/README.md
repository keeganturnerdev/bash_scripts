# Server Setup Script

This script automates the setup process for a basic server environment on Ubuntu Linux. It installs and configures various tools and services commonly used in server setups, including ClamAV, Fail2Ban, Docker, Apache web server, PHP 8.1, and ModSecurity.

## Usage

1. **Clone the Repository:**

2. **Navigate to the Repository Directory:**


3. **Review Scripts:**
- Before running any scripts, review them to ensure they meet your requirements and adjust configurations as needed.

4. **Run Scripts:**
- Execute the scripts individually or in the desired sequence based on your server setup requirements. Ensure each script has executable permissions.
- Example:
  ```
  ./update_packages.sh
  ./install_clamav.sh
  ./configure_clamav.sh
  ./install_fail2ban.sh
  ./install_docker.sh
  ./install_apache.sh
  ./install_php.sh
  ./install_modsecurity.sh
  ./final_update_packages.sh
  ```

5. **Post-Setup Steps:**
- After running the scripts, review the server configurations to ensure everything is set up correctly.
- Test the server functionality to verify that all services are running as expected.

## Scripts Description

- `update_packages.sh`: Updates the package lists and upgrades existing packages on the system.
- `install_clamav.sh`: Installs ClamAV antivirus software and its daemon.
- `configure_clamav.sh`: Configures and starts ClamAV service, including updating virus definitions.
- `install_fail2ban.sh`: Installs Fail2Ban intrusion prevention software and configures it.
- `install_docker.sh`: Installs Docker and Docker Compose for containerization.
- `install_apache.sh`: Installs and starts Apache web server.
- `install_php.sh`: Installs PHP 8.1 and necessary modules for Apache.
- `install_modsecurity.sh`: Installs and configures ModSecurity for Apache.
- `final_update_packages.sh`: Final package update after setup completion.

## Disclaimer

- Use this script at your own risk. Although efforts have been made to ensure reliability, it's recommended to review each script and understand its actions before executing it on a production server.
- Ensure backups are in place before running any system-wide changes.
- This script is tested on Ubuntu Linux and may not be compatible with other distributions.
