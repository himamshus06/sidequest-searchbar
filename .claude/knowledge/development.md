# SideQuest Development Knowledge Base

## Current Architecture
SideQuest is a minimal search bar for Windows built with .NET 8/WPF.

### Lifecycle & Startup
- **Entry Point**: `App.xaml.cs`
- **Startup Sequence**: 
    - Core services (`GlobalHotkeyService`, `TrayService`, `ApplicationIndexer`) are initialized in `App.OnStartup`.
    - The application starts as a background process. No window is created during boot.
    - The `TrayService` manages the system tray icon and "Start with Windows" registry settings.
- **UI Management**: `MainWindow` is lazy-loaded. It is instantiated and shown only when the `GlobalHotkeyService` triggers a `HotkeyPressed` event.
- **Service Decoupling**: All services are passed into `MainWindow` via dependency injection in its constructor to prevent redundant instances and UI flickers.

### Key Services
- **`GlobalHotkeyService`**: Uses a hidden `HwndSource` (message-only window) to listen for `WM_HOTKEY` (Ctrl+Space) without requiring a visible UI.
- **`TrayService`**: Manages the `NotifyIcon` and context menu.
- **`ApplicationIndexer`**: Scans system paths for installed applications and caches results in `%LocalAppData%\SideQuest\apps_cache.json`.
- **`ConfigService`**: Handles JSON-based configuration for shortcuts and routines.

## Recent Fixes
- **Startup Pop-up**: Fixed the issue where the search bar appeared on Windows startup by moving service initialization out of `MainWindow` and implementing lazy-loading.
- **Service Redundancy**: Fixed a bug where services were being initialized twice (once inline in `MainWindow` and once via constructor).
