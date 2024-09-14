package ports

import (
	"context"
	"github.com/johnfercher/medium-logistic/internal/core/consts"

	"github.com/johnfercher/medium-logistic/internal/core/models"
)

type GraphViewer interface {
	GetShortestPath(ctx context.Context, weightType consts.WeightType, source string, target string, edgeType string) (*models.GraphView, error)
	Search(ctx context.Context, search *models.Search) (*models.GraphView, error)
}
