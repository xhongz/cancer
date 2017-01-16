ANNOT_DIR="./annotations/"
RESULT_DIR="./exampleFiles/submission/"
ANNOT_FILE="./annotations/annotations.csv"
ANNOT_EX_FILE="./annotations/annotations_excluded.csv"
OUTPUT_DIR="./test/"

RESULT_FILE=$1
KEY_FILE=$2

echo ${RESULT_FILE}
echo ${KEY_FILE}

python generate_result_key.py \
  ${RESULT_FILE} \
  ${KEY_FILE}

python noduleCADEvaluationLUNA16.py \
  ${ANNOT_FILE} \
  ${ANNOT_EX_FILE} \
  ${KEY_FILE} \
  ${RESULT_FILE} \
  ${OUTPUT_DIR}

