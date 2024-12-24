### README for `dim` Script

---

## **`dim` Script: Screen Brightness Adjustment Made Easy**

### **Overview**
The `dim` script allows you to quickly adjust the brightness of your screen using the `xrandr` tool. By default, it dims the screen to 50% brightness, but you can specify a custom brightness level or reset it back to the default (100%).

---

### **Features**
- Set brightness to a custom value (e.g., 0.5, 0.8, etc.).
- Reset brightness back to default (100%).
- Easy-to-use command-line interface.

---

### **Usage**
1. **Default Brightness (50%)**:
   ```bash
   dim
   ```
2. **Custom Brightness**:
   ```bash
   dim <value>
   ```
   Replace `<value>` with a number between `0.1` (very dim) and `1.0` (full brightness).
   Example:
   ```bash
   dim 0.7
   ```
3. **Reset to Default Brightness (100%)**:
   ```bash
   dim reset
   ```

---

### **Installation Guide**
To set up the `dim` script for global use, follow these steps:

#### 1. **Copy the Script to `/bin`**
   - Save the script as `dim` (or any name you prefer).
   - Make it executable:
     ```bash
     chmod +x dim
     ```
   - Move the script to `/usr/local/bin` or `/bin` for system-wide use:
     ```bash
     sudo mv dim /usr/local/bin/
     ```
     Now, you can invoke the script from any terminal as `dim`.

#### 2. **Verify the Installation**
   - Test the script:
     ```bash
     dim
     ```
   - Confirm it adjusts the brightness to 50%.

#### 3. **Dependencies**
   Ensure `xrandr` is installed on your system. You can install it using your package manager:
   - On Debian/Ubuntu:
     ```bash
     sudo apt install x11-xserver-utils
     ```
   - On Fedora:
     ```bash
     sudo dnf install xorg-x11-server-utils
     ```
   - On Arch:
     ```bash
     sudo pacman -S xorg-xrandr
     ```

---

### **Examples**
1. **Dim to 30% Brightness**:
   ```bash
   dim 0.3
   ```
2. **Reset Brightness**:
   ```bash
   dim reset
   ```

---

### **Notes**
- `xrandr --brightness` applies a gamma filter, not actual hardware-level brightness changes.
- Ensure your display output (e.g., `eDP-1`) is compatible with `xrandr`. You can check available outputs using:
  ```bash
  xrandr
  ```
- For best results, use values between `0.1` and `1.0`.

---

### **Support**
If you encounter any issues, ensure:
1. `xrandr` is installed and properly configured.
2. Your display output matches the script's configuration (`eDP-1`).

For additional help, feel free to modify the script or reach out for troubleshooting! 😊
