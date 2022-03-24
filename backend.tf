terraform {
    backend "s3" {
        bucket = "demomarch15"
        key = "demo"
        region = "ap-south-1"
        dynamodb_table = "demodb22"
      
    }
}
