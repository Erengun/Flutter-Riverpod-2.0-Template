package cmd

import (
	"github.com/manifoldco/promptui"
	"os"
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
			Label:     pc.label,
			Items:     items,
			Templates: templates,
		}

		index, result, err = prompt.Run()

		if index == -1 {
			items = append(items, result)
		}
	}

	if err != nil {
		panic("Prompt failed")
	}

	//fmt.Printf("Input: %s\n", result)

	return result
}
