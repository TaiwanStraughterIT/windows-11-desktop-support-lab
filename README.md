# Windows 11 Desktop Support & Troubleshooting Lab

Personal hands-on Windows 11 IT support lab using UTM on an Apple Silicon Mac.

## Tools
Windows 11, Task Manager, Event Viewer, TPM Management, Command Prompt, Services, PowerShell.

## Exercises and findings
1. **Performance:** Compared baseline memory usage (65%, 2.6 GB) with multitasking (82%, 3.3 GB). Available memory fell from ~1.4 GB to 664 MB. No sustained CPU bottleneck confirmed.
2. **Event Viewer:** Investigated TPM Event ID 15; TPM Management still reported ready for use. Root cause not confirmed.
3. **Networking:** Used `ipconfig /all`, `ping` and `nslookup` to verify DHCP configuration, gateway/external reachability and DNS resolution. All tests succeeded.
4. **Services:** Checked Print Spooler; it was set to Automatic and Running. No actual printer fault was reproduced.
5. **PowerShell:** Created `SystemHealthCheck.ps1` to report computer, CPU, disk, network and service status. Troubleshot an execution-policy restriction and output formatting.

## Evidence
Screenshots are to be added to the `screenshots/` directory after checking for sensitive information.

## Scope
Simulated personal lab, not production support experience. Troubleshooting findings are documented without claiming unverified repairs.
