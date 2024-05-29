/*
Copyright © 2024 NAME HERE <EMAIL ADDRESS>
*/
package cmd

import (
	"fmt"
	"log"
	"os"
	"os/exec"
	"strconv"

	"github.com/manifoldco/promptui"

	"github.com/spf13/cobra"
)

type promptContent struct {
	label string
	// Optional choices for the select prompt
	choices []string
}

func promptGetInput(content string) string {
	pc := promptContent{label: content}
	templates := &promptui.PromptTemplates{
		Prompt:  "{{ . }} ",
		Valid:   "{{ . | green }} ",
		Invalid: "{{ . | red }} ",
		Success: "{{ . | bold }} ",
	}

	prompt := promptui.Prompt{
		Label:     pc.label,
		Templates: templates,
	}

	result, err := prompt.Run()
	if err != nil {
		log.Printf("Prompt failed %v\n", err)
		os.Exit(1)
	}

	log.Printf("Input: %s\n", result)

	return result
}

func pizzaCursor(input []rune) []rune {
	return []rune("\u2588")
}

func promptGetSelect(pc promptContent) string {
	items := pc.choices
	index := -1
	var result string
	var err error

	for index < 0 {
		prompt := promptui.Select{
			Label:   pc.label,
			Items:   items,
			Pointer: pizzaCursor,
		}

		index, result, err = prompt.Run()

		if index == -1 {
			items = append(items, result)
		}
	}

	if err != nil {
		fmt.Printf("Prompt failed %v\n", err)
		os.Exit(1)
	}

	fmt.Printf("Input: %s\n", result)

	return result
}

func updateAppNameAndPackageName() {
	var err error
	var appName string
	var packageName string
	appName = promptGetInput("Enter the new app name (eg: My App). Empty to skip :")
	packageName = promptGetInput("Enter the new package name (eg: com.example.myapp). Empty to skip :")
	// flutter pub run rename_app:main all="My App Name"
	if appName != "" {
		_, err = exec.Command("flutter", "pub", "run", "rename_app:main", "all="+appName).Output()
		if err != nil {
			log.Fatalln(err)
			return
		}
		log.Println("App name updated successfully.")
	} else {
		log.Println("Skipping app name update.")
	}

	// flutter pub run change_app_package_name:main com.new.package.name
	if packageName != "" {
		_, err := exec.Command("flutter", "pub", "run", "change_app_package_name:main", packageName).Output()
		if err != nil {
			log.Fatalln(err)
			return
		}
		log.Println("Package name updated successfully.")
	} else {
		log.Println("Skipping package name update.")
	}

	log.Printf("App %s with package name %s updated successfully.\n", appName, packageName)
}

func updateAppIconAndSplashScreen() {
	var err error
	var iconPath string
	var android bool
	var ios bool

	// Run flutter pub add flutter_launcher_icons
	log.Println("Adding flutter_launcher_icons package to the project.")
	_, err = exec.Command("flutter", "pub", "add", "flutter_launcher_icons").Output()
	if err != nil {
		log.Println("Failed to add flutter_launcher_icons package:", err)
		return
	}
	iconPath = promptGetInput("Enter the path to the icon file (eg: icon/path/here.png) : ")
	ans := promptGetSelect(promptContent{
		label:   "Do you want to update the android icon? (yes/no): ",
		choices: []string{"yes", "no"},
	})
	if ans == "yes" {
		android = true
	} else {
		android = false
	}
	ans = promptGetSelect(promptContent{
		label:   "Do you want to update the ios icon? (yes/no): ",
		choices: []string{"yes", "no"},
	})
	if ans == "yes" {
		ios = true
	} else {
		ios = false
	}

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
		log.Println("Failed to write Flutter Launcher Icons configuration to pubspec.yaml:", err)
		return
	}
	log.Println("Flutter Launcher Icons configuration added to pubspec.yaml.")
	// flutter pub get
	log.Println("Running flutter pub get to get the dependencies.")
	_, err = exec.Command("flutter", "pub", "get").Output()
	if err != nil {
		log.Fatal("Failed to run flutter pub get:", err)
		return
	}

	// flutter pub run flutter_launcher_icons
	log.Println("Running flutter pub run flutter_launcher_icons to update the app icon.")
	_, err = exec.Command("flutter", "pub", "run", "flutter_launcher_icons:main").Output()
	if err != nil {
		log.Println("Failed to run flutter pub run flutter_launcher_icons:main:", err)
		return
	}
	log.Println("App icon and splash screen updated successfully.")
}

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
		log.Println("init called")
		// Go to project root directory ../
		err := os.Chdir("..")
		if err != nil {
			log.Println("Failed to change directory:", err)
			return
		}
		// Check if the project is a Flutter project
		if _, err := os.Stat("pubspec.yaml"); os.IsNotExist(err) {
			// If not a Flutter project, show error message and exit
			log.Println("Not a Flutter project")
			return
		}
		log.Println("Flutter project detected. Running flutter pub get to get the dependencies.")
		// If Flutter project, run flutter pub get to get the dependencies
		_, err = exec.Command("flutter", "pub", "get").Output()
		if err != nil {
			log.Println("Failed to run flutter pub get:", err)
			return
		}
		// Run flutter pub add rename_app
		log.Println("Adding rename_app package to the project.")
		_, err = exec.Command("flutter", "pub", "add", "rename_app").Output()
		if err != nil {
			log.Println("Failed to add rename_app package:", err)
			return
		}

		log.Println("Adding change_app_package_name package to the project.")
		_, err = exec.Command("flutter", "pub", "add", "change_app_package_name", "--dev").Output()
		if err != nil {
			log.Println("Failed to add change_app_package_name package:", err)
			return
		}

		updateAppNameAndPackageName()

		ans := promptGetSelect(promptContent{
			label:   "Do you want to update the app icon and splash screen?: ",
			choices: []string{"yes", "no"},
		})
		if ans == "yes" {
			updateAppIconAndSplashScreen()
		}

		log.Println("All configurations updated successfully.")

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
