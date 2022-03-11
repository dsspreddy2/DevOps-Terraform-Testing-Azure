# resource "aws_flow_log" "vpcflowlogs" {
#   log_destination      = aws_s3_bucket.bucket1.arn
#   log_destination_type = "s3"
#   traffic_type         = "ALL"
#   vpc_id               = aws_vpc.default.id
#   tags = {
#     Name = "Flow Logs"
#   }
# }

