#! /bin/bash



# prepare
ROOT_DIR=$(pwd)

#check file exist
SOURCE_FILE="${ROOT_DIR}/1024*1024.png"
echo $SOURCE_FILE
if [[ ! -e ${SOURCE_FILE} ]]; then
	echo "文件不存在"
	exit 1
fi
DEST_DIR="${ROOT_DIR}/icon"
#如果目录有图片先清空
if [[ -d ${DEST_DIR} ]]; then
	rm -rf dir ${DEST_DIR}
fi
mkdir -p "${DEST_DIR}"
Image_NAME=("20@2x.png" "20@3x.png" "29.png" "29@2x.png" "29@3x.png" "40@2x.png" "40@3x.png" "57.png" "57@2x.png" "60@2x.png" "60@3x.png")
Image_SIZE=("40" "60" "29" "58" "87" "80" "120" "57" "114" "120" "180")


#sips starting
cp "${SOURCE_FILE}" "${DEST_DIR}"
for ((i=0; i<${#Image_SIZE[@]} ;i++)); do
	size=${Image_SIZE[i]}
	sips -Z ${size} "${SOURCE_FILE}" --out "${DEST_DIR}/${Image_NAME[i]}"
done










