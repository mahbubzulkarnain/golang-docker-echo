package tools

import . "encoding/base64"

func DecodeCursor(encodedRowNumber string) (string, error) {
	byt, err := StdEncoding.DecodeString(encodedRowNumber)
	if err != nil {
		return "", err
	}

	rowNumber := string(byt)

	return rowNumber, err
}
