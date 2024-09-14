package ports

import (
	"context"
	"github.com/johnfercher/medium-logistic/internal/core/consts"

	"github.com/johnfercher/medium-logistic/internal/core/models"
)

type GraphRepository interface {
	InitProjection(ctx context.Context)
	GetVertices(ctx context.Context) ([]*models.City, error)
	GetShortestPath(ctx context.Context, weightType consts.WeightType, source string, target string, edgeType string) (*models.WeightedGraph, error)
	Search(ctx context.Context, query *models.Search) (*models.Graph, error)
}
