package config

import (
	"fmt"
	"os"
	"regexp"
	"strings"

	"gopkg.in/yaml.v2"
)

const filePath = "configs/%s.yml"

type Config struct {
	Env   string `yaml:"env"`
	Neo4j struct {
		URL      string `yaml:"url"`
		User     string `yaml:"user"`
		Password string `yaml:"password"`
	} `yaml:"neo4j"`
}

func (c *Config) Print() {
	fmt.Printf("loaded env=%s, neo4j.url=%s, neo4j.user=%s, neo4j.password=%s\n",
		c.Env, c.Neo4j.URL, c.Neo4j.User, c.Neo4j.Password)
}

func Load(args []string) (*Config, error) {
	env, err := GetEnv(args)
	if err != nil {
		return nil, err
	}

	fmt.Printf("loading config file from env=%s\n", env)

	f, err := os.Open(fmt.Sprintf(filePath, env))
	if err != nil {
		fmt.Printf("could not load config file from env=%s\n", env)
		return nil, err
	}
	defer f.Close()

	cfg := &Config{}
	decoder := yaml.NewDecoder(f)
	err = decoder.Decode(&cfg)
	if err != nil {
		fmt.Printf("could not parse config file from env=%s\n", env)
		return nil, err
	}

	cfg.Env = env
	cfg.Print()

	return cfg, nil
}

func GetEnv(args []string) (string, error) {
	envRegex := regexp.MustCompile(`env=\w+`)

	for _, arg := range args {
		env := envRegex.FindString(arg)
		if env != "" {
			return strings.ReplaceAll(env, "env=", ""), nil
		}
	}

	return "local", nil
}
