#commands to upload the data

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/dogad/dogad-001.jpeg \
  --body ~/Downloads/dogad/dogad-001.jpeg \
  --tagging "name=Dogad-01&description=Dogad&price=1500&category=Dogad&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/dogad/dogad-001.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/dogad/dogad-002.jpeg \
  --body ~/Downloads/dogad/dogad-002.jpeg \
  --tagging "name=Dogad-02&description=Dogad&price=2000&category=Dogad&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/dogad/dogad-002.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/dogad/dogad-003.jpeg \
  --body ~/Downloads/dogad/dogad-003.jpeg \
  --tagging "name=Dogad-03&description=Dogad&price=2000&category=Dogad&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/dogad/dogad-003.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/dogad/dogad-004.jpeg \
  --body ~/Downloads/dogad/dogad-004.jpeg \
  --tagging "name=Dogad-04&description=Dogad&price=2500&category=Dogad&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/dogad/dogad-004.jpeg"

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/dogad/dogad-005.jpeg \
  --body ~/Downloads/dogad/dogad-005.jpeg \
  --tagging "name=Dogad-05&description=Dogad&price=2000&category=Dogad&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/dogad/dogad-005.jpeg"

