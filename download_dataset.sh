mkdir dataset
aws s3 cp s3://utech2020/expression_detector/expression.zip dataset/expression.zip
unzip dataset/expression.zip -d dataset/