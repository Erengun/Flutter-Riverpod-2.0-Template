/*
Copyright © 2024 NAME HERE <EMAIL ADDRESS>
*/
package cmd

import (
	log "github.com/sirupsen/logrus"
	"os"
	"os/exec"
	"strconv"
	"fmt"

	"github.com/manifoldco/promptui"

	"github.com/spf13/cobra"
)


type PlainFormatter struct {
}

func (f *PlainFormatter) Format(entry *log.Entry) ([]byte, error) {
	return []byte(fmt.Sprintf("%s\n", entry.Message)), nil
}
func toggleDebug(cmd *cobra.Command, args []string) {
	if Debug {
		log.Info("Debug logs enabled")
		log.SetLevel(log.DebugLevel)
		log.SetFormatter(&log.TextFormatter{})
	} else {
		plainFormatter := new(PlainFormatter)
		log.SetFormatter(plainFormatter)
	}
}

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
		// log.Printf("Prompt failed %v\n", err)
		os.Exit(1)
	}

	// log.Printf("Input: %s\n", result)

	return result
}

func promptGetSelect(pc promptContent) string {
	items := pc.choices
	index := -1
	var result string
	var err error

	var templates = &promptui.SelectTemplates{
		Label:    "{{ . }}?",
		Active:   "\U0001F355 {{ . | cyan }}",
		Inactive: "  {{ . | cyan }}",
		Selected: "\U0001F355 {{ . | red | cyan }}",
	}

	for index < 0 {
		prompt := promptui.Select{
			Label:   pc.label,
			Items:   items,
			Templates: templates,
		}

		index, result, err = prompt.Run()

		if index == -1 {
			items = append(items, result)
		}
	}

	if err != nil {
		//fmt.Printf("Prompt failed %v\n", err)
		os.Exit(1)
	}

	//fmt.Printf("Input: %s\n", result)

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
		// log.Debug("App name updated successfully.")
	} else {
		// log.Debug("Skipping app name update.")
	}

	// flutter pub run change_app_package_name:main com.new.package.name
	if packageName != "" {
		_, err := exec.Command("flutter", "pub", "run", "change_app_package_name:main", packageName).Output()
		if err != nil {
			log.Fatalln(err)
			return
		}
		// log.Debug("Package name updated successfully.")
	} else {
		// log.Debug("Skipping package name update.")
	}

	// log.Printf("App %s with package name %s updated successfully.\n", appName, packageName)
}

func updateAppIconAndSplashScreen() {
	var err error
	var iconPath string
	var android bool
	var ios bool

	// Run flutter pub add flutter_launcher_icons
	// log.Debug("Adding flutter_launcher_icons package to the project.")
	_, err = exec.Command("flutter", "pub", "add", "flutter_launcher_icons").Output()
	if err != nil {
		// log.Debug("Failed to add flutter_launcher_icons package:", err)
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
	err = os.WriteFile("flutter_launcher_icons.yaml", []byte(flutterLauncherIconsConfig), 0644)
	if err != nil {
		// log.Debug("Failed to write Flutter Launcher Icons configuration to pubspec.yaml:", err)
		return
	}
	// log.Debug("Flutter Launcher Icons configuration added to pubspec.yaml.")
	// flutter pub get
	// log.Debug("Running flutter pub get to get the dependencies.")
	_, err = exec.Command("flutter", "pub", "get").Output()
	if err != nil {
		log.Fatal("Failed to run flutter pub get:", err)
		return
	}

	// flutter pub run flutter_launcher_icons
	// log.Debug("Running flutter pub run flutter_launcher_icons to update the app icon.")
	_, err = exec.Command("flutter", "pub", "run", "flutter_launcher_icons", "-f", "flutter_launcher_icons.yaml").Output()
	if err != nil {
		// log.Debug("Failed to run flutter pub run flutter_launcher_icons:main:", err)
		return
	}
	// log.Debug("App icon and splash screen updated successfully.")
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
	PreRun: toggleDebug,
	Run: func(cmd *cobra.Command, args []string) {
		// log.Debug("init called")
		// Go to project root directory ../
		err := os.Chdir("..")
		if err != nil {
			// log.Debug("Failed to change directory:", err)
			return
		}
		// Check if the project is a Flutter project
		if _, err := os.Stat("pubspec.yaml"); os.IsNotExist(err) {
			// If not a Flutter project, show error message and exit
			// log.Debug("Not a Flutter project")
			return
		}
		// log.Debug("Flutter project detected. Running flutter pub get to get the dependencies.")
		// If Flutter project, run flutter pub get to get the dependencies
		_, err = exec.Command("flutter", "pub", "get").Output()
		if err != nil {
			log.Debug("Failed to run flutter pub get:", err)
			return
		}
		// Run flutter pub add rename_app
		log.Debug("Adding rename_app package to the project.")
		_, err = exec.Command("flutter", "pub", "add", "rename_app").Output()
		if err != nil {
			log.Debug("Failed to add rename_app package:", err)
			return
		}

		log.Debug("Adding change_app_package_name package to the project.")
		_, err = exec.Command("flutter", "pub", "add", "change_app_package_name", "--dev").Output()
		if err != nil {
			log.Debug("Failed to add change_app_package_name package:", err)
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

		log.Debug("All configurations updated successfully.")

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
