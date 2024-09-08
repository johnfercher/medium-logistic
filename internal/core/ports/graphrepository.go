package ports

import (
	"context"

	"github.com/johnfercher/medium-logistic/internal/core/models"
)

type GraphRepository interface {
	GetGraph(ctx context.Context) (*models.Graph, error)
}
