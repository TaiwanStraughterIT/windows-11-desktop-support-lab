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

## Project Evidence

Five exercise reports were prepared to document screenshots, troubleshooting procedures, technical observations, and findings. Upload the corresponding Word documents to this repository to make the evidence available alongside the script.

| Exercise | Evidence description |
| --- | --- |
| **1. Performance Monitoring** | Task Manager screenshots showing CPU monitoring, baseline memory utilization, and changes during multitasking. |
| **2. Event Viewer & TPM Investigation** | Windows System event log analysis, TPM-related Event ID 15 errors, and TPM status verification. |
| **3. Network Diagnostics** | Command Prompt evidence of IPv4 configuration, gateway and external reachability, and DNS resolution tests. |
| **4. Windows Services** | Print Spooler configuration, automatic startup setting, and running status. |
| **5. PowerShell Automation** | PowerShell execution and troubleshooting of a custom health-check script collecting workstation diagnostic information. |

The reports demonstrate investigation and verification, not unconfirmed incident resolutions.

## Scope
Simulated personal lab, not production support experience. Troubleshooting findings are documented without claiming unverified repairs.
