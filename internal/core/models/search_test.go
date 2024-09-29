package models

import (
	"fmt"
	"testing"
)

func TestGraphRepository_Search(t *testing.T) {
	t.Run("", func(t *testing.T) {
		// Arrange
		s := Search{
			SourceLabel: "City",
			TargetLabel: "City",
			EdgeType:    "road",
			States: []string{
				"BA",
				"AL",
			},
		}

		fmt.Println(s.Query())
	})
}
