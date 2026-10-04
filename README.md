# 🚀 SideQuest

SideQuest is a smart, minimal search bar for Windows that lets you launch apps, open websites, and execute routines with a single keystroke.

## ✨ Features

### ⌨️ Quick Launch
- **Global Hotkey**: Press `Ctrl + Space` to instantly toggle the search bar.
- **App Search**: Fast, fuzzy search through all your installed Windows applications.
- **Custom Shortcuts**: Create your own keyword-based shortcuts for frequently visited sites or files.
- **Templated Shortcuts**: Use keywords as prefixes for parameterized searches (e.g., `gh react` to search GitHub).
- **Developer Commands**: Run arbitrary shell commands in a specific working directory (e.g., `npm run dev` in your project folder).
- **Smart Routines**: Launch a group of apps or websites together with one keyword (e.g., typing `work` to open Slack, Jira, and VS Code).
- **Built-in Commands**: Use triggers like `!calc` or `!google` for instant actions.
- **Auto-Start**: Option to launch SideQuest automatically when Windows starts. Select start with windows in: System tray>right click sidequest

### 🛠️ Technical Stack
- **Framework**: .NET 8.0 / WPF
- **Integration**: Win32 API for global hotkeys and shell icons.
- **Persistence**: JSON-based configuration stored in Local AppData.

## 🚀 Getting Started

### Prerequisites
- .NET 8.0 Runtime (for users) or SDK (for developers)

### Build and Run
```powershell
cd SideQuest
dotnet build
dotnet run
```

## ⚙️ Configuration
Your settings are stored in:
`%LocalAppData%\SideQuest\config.json`

You can manually add shortcuts or routines there, or use the built-in commands:
- `!add <keyword> <target>`: Add a new shortcut.
- `!rm <keyword>`: Remove a shortcut.

## 🗺️ Roadmap
- [ ] Custom Routine Management UI
- [ ] Advanced Search Filtering
- [ ] Theming and Customization
- [ ] Plugin System for custom Commands

📖 User Directions (for your users)

How to Install & Use SideQuest:
1. Download: Download the SideQuest.exe from the release page.
2. Run: Double-click SideQuest.exe. The app will start and appear as a small icon in your system tray (bottom right).
3. Launch: Press Ctrl + Space to open the search bar.
4. Quick Use:
   - Apps: Type the name of any app (e.g., "Chrome") and press Enter.
   - Shortcuts: Type a keyword (e.g., gh) to open a saved link.
   - Templates: Type a keyword followed by a search term (e.g., ghs react) to perform a parameterized search.
   - Dev Commands: Type a dev keyword (e.g., wb) to run a specific command in a project folder.
   - Routines: Type a routine keyword (e.g., work) to launch multiple apps at once.
5. Configure: 
   - Auto-Start: Right-click the tray icon and check "Start with Windows".
   - Shortcuts: Edit the config.json file found in %LocalAppData%\SideQuest\config.json.
