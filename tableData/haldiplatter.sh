#commands to upload the data

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/platter/haldi-platter-001.jpeg \
  --body ~/Downloads/haldiPlatter/haldiplatter-001.jpeg \
  --tagging "name=Haldi-Platter-01&description=Haldi Platter&price=1500&category=Haldi Platter&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/platter/haldi-platter-001.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/platter/haldi-platter-002.jpeg \
  --body ~/Downloads/haldiPlatter/haldiplatter-002.jpeg \
  --tagging "name=Haldi-Platter-02&description=Haldi Platter&price=1500&category=Haldi Platter&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/platter/haldi-platter-002.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/platter/haldi-platter-003.jpeg \
  --body ~/Downloads/haldiPlatter/haldiplatter-003.jpeg \
  --tagging "name=Haldi-Platter-03&description=Haldi Platter&price=1500&category=Haldi Platter&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/platter/haldi-platter-003.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/platter/haldi-platter-004.jpeg \
  --body ~/Downloads/haldiPlatter/haldiplatter-004.jpeg \
  --tagging "name=Haldi-Platter-04&description=Haldi Platter&price=1500&category=Haldi Platter&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/platter/haldi-platter-004.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/platter/haldi-platter-005.jpeg \
  --body ~/Downloads/haldiPlatter/haldiplatter-005.jpeg \
  --tagging "name=Haldi-Platter-05&description=Haldi Platter&price=1500&category=Haldi Platter&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/platter/haldi-platter-005.jpeg"

