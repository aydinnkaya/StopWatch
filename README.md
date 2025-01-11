# StopWatch ⏱️

**StopWatch** is a minimalistic stopwatch application developed for iOS devices. The application enables users to start, stop, and reset a timer, providing a seamless and intuitive experience. Built using modern Swift and UIKit technologies, it supports both light and dark modes for an enhanced user experience.

---

## 🎥 Project Demonstration

### Watch the app in action:


https://github.com/user-attachments/assets/0b944485-a1f0-48c3-bc6a-5a829f336a7e  

https://github.com/user-attachments/assets/b5203acf-6ee2-4e08-a572-c660f913bed1

---

## 🖼️ Screenshots

| Initial Screen (Light) | Initial Screen (Dark) |
|:----------------------:|:---------------------:|
| ![Light Mode Initial Screen](https://github.com/user-attachments/assets/24efc2fa-1802-41f2-ad8b-4ff4d5027526) | ![Dark Mode Initial Screen](https://github.com/user-attachments/assets/a2e46ae7-d3a5-4685-afea-35a9e5d1f9e4) |

| Confirmation Dialog (Light) | Confirmation Dialog (Dark) |
|:---------------------------:|:--------------------------:|
| ![Light Mode Confirmation Dialog](https://github.com/user-attachments/assets/7686cad9-1fc1-4b38-8a23-d3c7ed02213f) | ![Dark Mode Confirmation Dialog](https://github.com/user-attachments/assets/8a69ca0f-3975-476b-b9f7-170f00605227) |

---

## 🚀 Key Features

- **🔄 Start/Stop Timer**: Allows users to initiate or pause the stopwatch with a simple tap.
- **🕒 Formatted Time Display**: Presents the elapsed time in HH:MM:SS format.
- **🔔 Reset Confirmation Dialog**: Ensures intentional resets by requiring user confirmation.
- **🌗 Light and Dark Mode Support**: Dynamically adjusts to the system’s appearance settings for an enhanced user experience.

---

## 🛠️ Technologies Utilized

| Technology  | Description |
|-------------|-------------|
| **Swift**   | Modern programming language for iOS development. |
| **UIKit**   | Framework for creating user interfaces on iOS. |
| **Xcode**   | Apple’s official Integrated Development Environment (IDE). |
| **iOS**     | Minimum supported version: iOS 14.0. |

---

## 📥 Installation and Setup

### 1️⃣ Prerequisites

- **macOS** operating system.
- **Xcode version 12.0** or later.
- An iOS simulator or a physical device for testing.

### 2️⃣ Cloning the Repository

To download the project, run the following command in your terminal:

```bash
git clone https://github.com/username/StopWatch.git
```

### 3️⃣ Opening the Project

1. Launch **Xcode**.
2. Navigate to the project directory and open the `StopWatch.xcodeproj` file.

### 4️⃣ Running the Application

- Use `Command + R` to build and run the application.
- Choose a simulator or a connected physical device to test the app.

---

## 🧩 Architectural Overview

This application follows the **Model-View-Controller (MVC)** architectural design pattern for maintainability and scalability.

- **Controller**: The `ViewController.swift` manages user interactions and timer logic.
- **View**: The `Main.storyboard` defines the user interface layout.
- **Model**: Utility functions inside the controller manage time calculations and formatting.

---

## 📝 Highlighted Code Sections

### Start/Stop Timer Logic

This logic controls the state of the timer:

```swift
@IBAction func startStopButton(_ sender: UIButton, forEvent event: UIEvent) {
    if timerCounting {
        timerCounting = false
        timer.invalidate()
    } else {
        timerCounting = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
    }
}
```

### Reset Timer Confirmation

A dialog appears to confirm if the user wants to reset the timer:

```swift
@IBAction func resetButton(_ sender: UIButton, forEvent event: UIEvent) {
    let alert = UIAlertController(title: "Reset Timer?", message: "Are you sure you would like to reset the timer?", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { _ in
        self.counter = 0
        self.timer.invalidate()
    }))
    self.present(alert, animated: true, completion: nil)
}
```

---

## 📂 Project Directory Structure

```
StopWatch/
├── StopWatch/
│   ├── AppDelegate.swift
│   ├── SceneDelegate.swift
│   ├── ViewController.swift
│   ├── Assets.xcassets
│   └── Main.storyboard
└── StopWatch.xcodeproj/
```

---

## 👨‍💻 Author

- **Aydın Kaya**
- [GitHub](https://github.com/aydinnkaya)
- [LinkedIn](https://linkedin.com/in/aydinnkaya)

---

## 🏆 Contributing

Contributions to improve this project are welcome! To contribute:

1. **Fork** the repository.
2. **Create a feature branch**:
   ```bash
   git checkout -b feature-name
   ```
3. **Make your changes** and commit them:
   ```bash
   git commit -m "Added feature-name"
   ```
4. **Push to your branch**:
   ```bash
   git push origin feature-name
   ```
5. **Open a Pull Request**: We'll review your changes and merge them into the main branch.
