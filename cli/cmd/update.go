package cmd

import (
	"fmt"
	"os"
	"os/exec"
	"strconv"

	log "github.com/sirupsen/logrus"
)

func updateAppName() {
updateAppName:
	var err error
	appName := promptGetInput("Enter the new app name (eg: My App). Empty to skip :")

	if appName == "" {
		validateSkip := promptGetSelect(promptContent{
			label:   "Are you sure you want to skip updating the app name?",
			choices: []string{"yes", "no"},
		})
		if validateSkip == "no" {
			goto updateAppName
		}
		return
	}
	// Validate the app name
	validateName := promptGetSelect(promptContent{
		label:   "Are you sure you want to update the app name to: " + appName + " ",
		choices: []string{"yes", "no", "retry"},
	})
	if validateName == "no" {
		fmt.Println("Skipping app name update.")
		return
	}
	if validateName == "retry" {
		goto updateAppName
	}
	// flutter pub run rename_app:main all="My App Name"
	if appName != "" {
		stopChan := make(chan struct{})
		go LoadingSpinner(stopChan, "Updating app name...")
		_, err = exec.Command("dart", "run", "rename_app:main", "all="+appName).Output()
		if err != nil {
			log.Fatalln(err)
			return
		}
		fmt.Println("\nApp name updated successfully.")
		close(stopChan)
	} else {
		log.Debug("Skipping app name update.")
	}
}

func updatePackageName() {
	packageName := promptGetInput("Enter the new package name (eg: com.example.myapp). Empty to skip :")
	// Validate the package name
	validateName := promptGetSelect(promptContent{
		label:   "Are you sure you want to update the package name to '" + packageName + "' ",
		choices: []string{"yes", "no"},
	})
	if validateName == "no" {
		fmt.Println("Skipping package name update.")
		return
	}

	// flutter pub run change_app_package_name:main com.new.package.name
	if packageName != "" {
		stopChan := make(chan struct{})
		go LoadingSpinner(stopChan, "Updating package name...")
		_, err := exec.Command("dart", "run", "change_app_package_name:main", packageName).Output()
		if err != nil {
			log.Fatalln(err)
			return
		}
		close(stopChan)
		fmt.Println("\nPackage name updated successfully.")
	} else {
		log.Debug("Skipping package name update.")
	}
}

func getAppIconPath() (iconPath string, android bool, ios bool) {
GetAppIconPath:
	iconPath = promptGetInput("Enter the path to the icon file (eg: icon/path/here.png) : ")

	// Validate the icon path
	val := promptGetSelect(promptContent{
		label:   "Is the icon path correct: " + iconPath + " ",
		choices: []string{"yes", "no", "skip"},
	})
	if val == "no" {
		goto GetAppIconPath
	}
	if val == "skip" {
		fmt.Println("Skipping app icon update.")
		return
	}

	ans := promptGetSelect(promptContent{
		label:   "Do you want to update the android icon?",
		choices: []string{"yes", "no"},
	})
	if ans == "yes" {
		android = true
	} else {
		android = false
	}
	ans = promptGetSelect(promptContent{
		label:   "Do you want to update the ios icon?",
		choices: []string{"yes", "no"},
	})
	if ans == "yes" {
		ios = true
	} else {
		ios = false
	}
	return iconPath, android, ios
}

func updateAppIcon() {
	var err error
	var iconPath string
	var android bool
	var ios bool

	stopChan := make(chan struct{})
	go LoadingSpinner(stopChan, "Getting icon updater dependencies...")
	// Run flutter pub add flutter_launcher_icons
	// log.Debug("Adding flutter_launcher_icons package to the project.")
	_, err = exec.Command("flutter", "pub", "add", "flutter_launcher_icons").Output()
	if err != nil {
		log.Warn("Failed to add flutter_launcher_icons package:", err)
		log.Warn("Skipping app icon update.")
		return
	}
	close(stopChan)
	iconPath, android, ios = getAppIconPath()

	// Add your Flutter Launcher Icons configuration to your pubspec.yaml
	flutterLauncherIconsConfig := `
flutter_launcher_icons:
    image_path_android: ` + iconPath + `
    image_path_ios: ` + iconPath + `
    android: ` + strconv.FormatBool(android) + `
    ios: ` + strconv.FormatBool(ios) + `
`
	err = os.WriteFile("flutter_launcher_icons.yaml", []byte(flutterLauncherIconsConfig), 0644)
	if err != nil {
		log.Warn("Failed to write Flutter Launcher Icons configuration to flutter_launcher_icons.yaml:", err)
		log.Warn("Skipping app icon and splash screen update.")
		return
	}
	log.Debug("Running flutter pub get to get the dependencies.")
	_, err = exec.Command("flutter", "pub", "get").Output()
	if err != nil {
		log.Fatal("Failed to run flutter pub get:", err)
		return
	}

	// flutter pub run flutter_launcher_icons
	log.Debug("Running flutter pub run flutter_launcher_icons to update the app icon.")
	_, err = exec.Command("dart", "run", "flutter_launcher_icons", "-f", "flutter_launcher_icons.yaml").Output()
	if err != nil {
		log.Warn("Failed to run flutter pub run flutter_launcher_icons:", err)
		log.Warn("Please run 'flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml' manually.")
		return
	}
	log.Debug("App icon and splash screen updated successfully.")
}
