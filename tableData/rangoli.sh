#commands to upload the data

aws s3api put-object \
  --bucket asha-home-products-catalog \
  --key products/rangoli-002.jpeg \
  --body ~/Downloads/rangoli/rangoli-002.jpeg \
  --tagging "name=rangoli&description=check&price=700&image_url=https://asha-home-products-catalog.s3.ap-south-1.amazonaws.com/products/rangoli-002.jpeg"