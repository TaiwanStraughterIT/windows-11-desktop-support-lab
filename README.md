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

Five uploaded exercise reports document screenshots, troubleshooting procedures, technical observations, and findings. Open each Word report using the links below.

| Exercise | Evidence description |
| --- | --- |
| [**1. Performance Monitoring**](Exercise_1_Windows_Performance_Monitoring.docx) | Task Manager screenshots showing CPU monitoring, baseline memory utilization, and changes during multitasking. |
| [**2. Event Viewer & TPM Investigation**](Exercise_2_Event_Viewer_TPM_Investigation.docx) | Windows System event log analysis, TPM-related Event ID 15 errors, and TPM status verification. |
| [**3. Network Diagnostics**](Exercise_3_Network_Diagnostics.docx) | Command Prompt evidence of IPv4 configuration, gateway and external reachability, and DNS resolution tests. |
| [**4. Windows Services**](Exercise_4_Windows_Services.docx) | Print Spooler configuration, automatic startup setting, and running status. |
| [**5. PowerShell Automation**](Exercise_5_PowerShell_Automation.docx) | PowerShell execution and troubleshooting of a custom health-check script collecting workstation diagnostic information. |

The reports demonstrate investigation and verification, not unconfirmed incident resolutions.

## Scope
Simulated personal lab, not production support experience. Troubleshooting findings are documented without claiming unverified repairs.
