package errors

type Error struct {
	Message string
	Op      string
	Err     error
	File    string
	Line    int
}
