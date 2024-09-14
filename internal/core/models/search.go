package models

import (
	"errors"
	"fmt"
	"github.com/johnfercher/medium-logistic/internal/core/consts"
)

type ShortestPath struct {
	WeightType consts.WeightType `json:"weight"`
	Source     string            `json:"source"`
	Target     string            `json:"target"`
	EdgeType   string            `json:"edge_type"`
}

func (s *ShortestPath) Validate() error {
	if s.EdgeType != "road" && s.EdgeType != "air" && s.EdgeType != "water" && s.EdgeType != "train" && s.EdgeType != "" {
		return errors.New(fmt.Sprintf("invalid edge_type: %s", s.EdgeType))
	}

	if !s.WeightType.IsValid() {
		return errors.New(fmt.Sprintf("invalid weight: %s", s.WeightType))
	}

	return nil
}

type Search struct {
	SourceLabel    string            `json:"source_label"`
	TargetLabel    string            `json:"target_label"`
	SourceCityType string            `json:"source_city_type"`
	TargetCityType string            `json:"target_city_type"`
	EdgeType       string            `json:"edge_type"`
	WeightType     consts.WeightType `json:"weight_type"`
	States         []string          `json:"states"`
}

func (s *Search) Query() string {
	var query string
	if s.EdgeType != "" {
		query = fmt.Sprintf(`MATCH p=(source:%s)-[edge]-(target:%s) WHERE (source)-[:%s]->(target)`,
			s.SourceLabel, s.TargetLabel, s.EdgeType)
	} else {
		query = fmt.Sprintf(`MATCH p=(source:%s)-[edge]-(target:%s) WHERE (source)-[]->(target)`,
			s.SourceLabel, s.TargetLabel)
	}

	if s.SourceCityType != "" && s.TargetCityType != "" {
		query += fmt.Sprintf(` AND (source.type = "%s" OR target.type = "%s")`, s.SourceCityType, s.TargetCityType)
	} else if s.SourceCityType != "" {
		query += fmt.Sprintf(` AND source.type = "%s"`, s.SourceCityType)
	} else if s.TargetCityType != "" {
		query += fmt.Sprintf(` AND target.type = "%s"`, s.TargetCityType)
	}

	if len(s.States) > 0 {
		query += " AND ("
		for i, state := range s.States {
			if i < len(s.States)-1 {
				query += fmt.Sprintf(` (source.acronym = "%s" OR target.acronym = "%s") OR`, state, state)
			} else {
				query += fmt.Sprintf(` (source.acronym = "%s" OR target.acronym = "%s")`, state, state)
			}

		}
		query += ")"
	}

	query += " RETURN p"

	fmt.Println(query)

	return query
}
