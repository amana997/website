#commands to upload the data

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/shadiItem/dogad/dogad-001.jpeg \
  --body ~/Downloads/dogad/dogad-001.jpeg \
  --tagging "name=Dogad-01&description=Dogad&price=2000&category=Dogad&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/shadiItem/dogad/dogad-001.jpeg"
