package cmd

import (
	"encoding/json"
	"fmt"
	"io"
	"log"
	"math/rand"
	"os"
	"time"
)

type Spinner struct {
	Interval int      `json:"interval"`
	Frames   []string `json:"frames"`
}

// Global variable to store all spinners
var allSpinners map[string]Spinner

func init() {
	// Seed the random number generator
	rand.New(rand.NewSource(time.Now().UnixNano()))

	// Read JSON file
	file, err := os.OpenFile("cmd/spinners.json", os.O_RDONLY, 0)
	if err != nil {
		log.Fatal("Error opening file:", err)
		return
	}
	defer func(file *os.File) {
		_ = file.Close()
	}(file)

	// Read file contents
	byteValue, err := io.ReadAll(file)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}

	// Unmarshal JSON data into the allSpinners map
	err = json.Unmarshal(byteValue, &allSpinners)
	if err != nil {
		fmt.Println("Error unmarshalling JSON:", err)
		return
	}
}

// Function to get a random spinner
func getRandomSpinner() Spinner {
	keys := make([]string, 0, len(allSpinners))
	for key := range allSpinners {
		keys = append(keys, key)
	}

	randomKey := keys[rand.Intn(len(keys))]
	return allSpinners[randomKey]
}

func LoadingSpinner(stopChan chan struct{}, msg string) {
	// Get a random
	spinner := getRandomSpinner()

	i := 0
	for {
		select {
		case <-stopChan:
			return
		default:
			fmt.Printf("\r%s \033[32m%s\033[0m", msg, spinner.Frames[i])
			i = (i + 1) % len(spinner.Frames)
			time.Sleep(time.Duration(spinner.Interval) * time.Millisecond)
		}
	}
}
