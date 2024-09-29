package models

import (
	"fmt"
	"testing"
)

func TestGraph_Query(t *testing.T) {
	t.Run("", func(t *testing.T) {
		graph := &Graph{
			Cities: []*City{
				{
					ID: "a",
				},
				{
					ID: "b",
				},
				{
					ID: "c",
				},
				{
					ID: "d",
				},
			},
		}

		query := graph.Query()

		fmt.Println(query)
	})
}
