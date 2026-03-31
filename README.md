# oss-audit--24BCY10378-
Five automated shell scripts demonstrating Linux system identity, package management, log analysis, and permission auditing as part of an Open Source Software Capstone.

Script Descriptions & Execution:

Script 1: System Identity Report
Description: A system welcome screen that dynamically fetches and displays core identity metrics of the host Linux environment, including the distribution name, kernel version, current user, uptime, and the underlying OS open-source license.

Script 2: FOSS Package Inspector
Description: A package auditor that checks if Git (or another specified package) is installed on the system using dpkg. It filters the output to display the current version and maintainer, and prints a philosophical note about the software's role in the FOSS ecosystem.

Script 3: Disk and Permission Auditor
Description: An automated storage and security auditor. It iterates through core Linux directories (like /etc, /var/log, /tmp) to report their permissions, owners, and human-readable sizes. It specifically audits the footprint of Git's user-level configuration file (~/.gitconfig).

Script 4: Log File Analyzer
Description: A diagnostic log parsing tool. It safely prompts the user for a valid log file, reads it line-by-line, and counts the occurrences of a specific diagnostic keyword (defaulting to "error"). It then displays the last 5 matching lines for context.

Script 5: Open Source Manifesto Generator
Description: An interactive command-line generator. It prompts the user with three FOSS-related questions and concatenates the inputs into a personalized Open Source Manifesto, which is then saved to a dynamically generated .txt file using file redirection.
