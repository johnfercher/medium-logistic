package ports

import (
	"context"

	"github.com/johnfercher/medium-logistic/internal/core/models"
)

type GraphViewer interface {
	GetGraph(ctx context.Context) (*models.GraphView, error)
}
