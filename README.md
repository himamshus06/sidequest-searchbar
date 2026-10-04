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

### 🛠️ Technical Stack
- **Framework**: .NET 8.0 / WPF
- **Integration**: Win32 API for global hotkeys and shell icons.
- **Persistence**: JSON-based configuration stored in Local AppData.

## 🚀 Getting Started

### Prerequisites
- .NET 8.0 Runtime (for users) or SDK (for developers)

### Build and Run
```powershell
cd WinLauncher
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
