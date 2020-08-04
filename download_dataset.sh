mkdir dataset
aws s3 cp s3://utech2020/expression_detector/dataset.tar.gz dataset/dataset.tar.gz
tar xzf dataset/dataset.tar.gz -C dataset/