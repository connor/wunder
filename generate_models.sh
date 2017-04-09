#!/bin/bash
SCHEMAS=./WUNDER/Models/Schemas/*.json
for schema in $SCHEMAS
do
  plank --objc_class_prefix WDR --output_dir ./WUNDER/Models/ $schema
done
