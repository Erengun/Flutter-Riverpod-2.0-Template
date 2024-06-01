package cmd

import (
	"encoding/json"
	"math/rand"
	"testing"
	"time"
)

func initTest() {
	// Seed the random number generator
	rand.New(rand.NewSource(time.Now().UnixNano()))

	// Mock JSON data
	mockJSON := `{
		"dots": {
			"interval": 80,
			"frames": ["⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏"]
		},
		"dots2": {
			"interval": 80,
			"frames": ["⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷"]
		}
	}`

	// Unmarshal mock JSON data into the allSpinners map
	err := json.Unmarshal([]byte(mockJSON), &allSpinners)
	if err != nil {
		panic("Error unmarshalling mock JSON: " + err.Error())
	}
}

func TestGetRandomSpinner(t *testing.T) {
	initTest()
	spinner := getRandomSpinner()
	if spinner.Interval == 0 || len(spinner.Frames) == 0 {
		t.Errorf("Invalid spinner data: %v", spinner)
	}
}

func TestLoadingSpinner(t *testing.T) {
	initTest()
	stopChan := make(chan struct{})
	go LoadingSpinner(stopChan, "Loading")

	// Let the spinner run for a short period
	time.Sleep(10 * time.Second)

	// Stop the spinner
	close(stopChan)
}
