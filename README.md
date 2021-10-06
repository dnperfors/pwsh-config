# pwsh-config
This repo contains my basic powershell settings. They might not fit you, use at your own risk.

## Pre-requisites
* oh-my-posh installed as application, not as PowerShell module: `winget install ohmyposh`

## Installation
* Clone this repo in your users Documents folder as `PowerShell`: `cd ~/Documents; git clone https://github.com/dnperfors/pwsh-config PowerShell`

## Available functions
* `Start-VS` attempts to start Visual Studio with the selected solution, or the solution found in the current directory. To open the current directory run `Start-VS .`