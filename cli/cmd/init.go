/*
Copyright © 2024 NAME HERE <EMAIL ADDRESS>
*/
package cmd

import (
	"fmt"
	"os"
	"os/exec"
	"strconv"

	"github.com/spf13/cobra"
)

// initCmd represents the init command
var initCmd = &cobra.Command{
	Use:   "init",
	Short: "init command is used to start the process of changing app name, package name, and other configurations.",
	Long: `
init command is used to start the process of changing app name, package name, and other configurations.
It uses the information provided by the user to update the configurations and rename the files accordingly.
Write 'template init' in the terminal to start the process.
	`,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("init called")
		// Go to project root directory ../
		// Go to project root directory ../
		err := os.Chdir("..")
		if err != nil {
			fmt.Println("Failed to change directory:", err)
			return
		}
		// Check if the project is a Flutter project
		if _, err := os.Stat("pubspec.yaml"); os.IsNotExist(err) {
			// If not a Flutter project, show error message and exit
			fmt.Println("Not a Flutter project")
			return
		}
		fmt.Println("Flutter project detected. Running flutter pub get to get the dependencies.")
		// If Flutter project, run flutter pub get to get the dependencies
		_, err = exec.Command("flutter", "pub", "get").Output()
		if err != nil {
			fmt.Println("Failed to run flutter pub get:", err)
			return
		}
		// Run flutter pub add rename_app
		fmt.Println("Adding rename_app package to the project.")
		_, err = exec.Command("flutter", "pub", "add", "rename_app").Output()
		if err != nil {
			fmt.Println("Failed to add rename_app package:", err)
			return
		}

		fmt.Println("Adding change_app_package_name package to the project.")
		_, err = exec.Command("flutter", "pub", "add", "change_app_package_name", "--dev").Output()
		if err != nil {
			fmt.Println("Failed to add change_app_package_name package:", err)
			return
		}

		var appName string
		fmt.Print("Enter the new app name (eg: My App).\nEmpty to skip : ")
		fmt.Scanln(&appName)
		var packageName string
		fmt.Print("Enter the new package name (com.new.package.name).\nEmpty to skip : ")
		fmt.Scanln(&packageName)
		// flutter pub run rename_app:main all="My App Name"
		if appName != "" {
			_, err = exec.Command("flutter", "pub", "run", "rename_app:main", "all="+appName).Output()
			if err != nil {
				fmt.Println("Failed to run rename_app:main:", err)
				return
			}
			fmt.Println("App name updated successfully.")
		} else {
			fmt.Println("Skipping app name update.")
		}

		// flutter pub run change_app_package_name:main com.new.package.name
		if packageName != "" {
			_, err = exec.Command("flutter", "pub", "run", "change_app_package_name:main", packageName).Output()
			if err != nil {
				fmt.Println("Failed to run change_app_package_name:main:", err)
				return
			}
			fmt.Println("Package name updated successfully.")
		} else {
			fmt.Println("Skipping package name update.")
		}

		fmt.Printf("App %s with package name %s updated successfully.\n", appName, packageName)

		var ans string
		for {
			fmt.Print("Do you want to update the app icon and splash screen? (yes/no): ")
			fmt.Scanln(&ans)
			if ans == "yes" {
				// Run flutter pub add flutter_launcher_icons
				fmt.Println("Adding flutter_launcher_icons package to the project.")
				_, err = exec.Command("flutter", "pub", "add", "flutter_launcher_icons").Output()
				if err != nil {
					fmt.Println("Failed to add flutter_launcher_icons package:", err)
					return
				}
				fmt.Print("Enter the path to the icon file (eg: icon/path/here.png) : ")
				var iconPath string
				fmt.Scanln(&iconPath)
				var android bool
				fmt.Print("Do you want to update the android icon? (yes/no): ")
				fmt.Scanln(&android)
				var ios bool
				fmt.Print("Do you want to update the ios icon? (yes/no): ")
				fmt.Scanln(&ios)

				// Add your Flutter Launcher Icons configuration to your pubspec.yaml
				flutterLauncherIconsConfig := `
flutter_launcher_icons:
	image_path_android: ` + iconPath + `
	image_path_ios: ` + iconPath + `
	android: ` + strconv.FormatBool(android) + `
	ios: ` + strconv.FormatBool(ios) + `
`
				err = os.WriteFile("pubspec.yaml", []byte(flutterLauncherIconsConfig), 0644)
				if err != nil {
					fmt.Println("Failed to write Flutter Launcher Icons configuration to pubspec.yaml:", err)
					return
				}
				fmt.Println("Flutter Launcher Icons configuration added to pubspec.yaml.")
				// flutter pub get
				fmt.Println("Running flutter pub get to get the dependencies.")
				_, err = exec.Command("flutter", "pub", "get").Output()
				if err != nil {
					fmt.Println("Failed to run flutter pub get:", err)
					return
				}

				// flutter pub run flutter_launcher_icons
				fmt.Println("Running flutter pub run flutter_launcher_icons to update the app icon.")
				_, err = exec.Command("flutter", "pub", "run", "flutter_launcher_icons:main").Output()
				if err != nil {
					fmt.Println("Failed to run flutter pub run flutter_launcher_icons:main:", err)
					return
				}
				fmt.Println("App icon and splash screen updated successfully.")
			} else if ans == "no" {
				break
			} else {
				fmt.Println("Invalid input. Please enter 'yes' or 'no'.")
			}
		}
		// As

		fmt.Println("All configurations updated successfully.")

	},
}

func init() {
	rootCmd.AddCommand(initCmd)

	// Here you will define your flags and configuration settings.

	// Cobra supports Persistent Flags which will work for this command
	// and all subcommands, e.g.:
	// initCmd.PersistentFlags().String("foo", "", "A help for foo")

	// Cobra supports local flags which will only run when this command
	// is called directly, e.g.:
	// initCmd.Flags().BoolP("toggle", "t", false, "Help message for toggle")
}
