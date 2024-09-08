package neo4jdriver

import (
	"fmt"

	"github.com/neo4j/neo4j-go-driver/v5/neo4j"
)

func Start(url string, user string, password string) (neo4j.DriverWithContext, error) {
	conn, err := neo4j.NewDriverWithContext(fmt.Sprintf("bolt://%s", url), neo4j.BasicAuth(user, password, ""))
	if err != nil {
		return nil, err
	}

	return conn, nil
}
