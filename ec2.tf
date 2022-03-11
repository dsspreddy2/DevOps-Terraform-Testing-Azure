# resource "aws_instance" "web-1" {
#   ami = var.imagename
#   #  ami = "ami-0d857ff0f5fc4e03b"
#   #  ami = "${data.aws_ami.my_ami.id}"
#   availability_zone           = "us-east-1a"
#   instance_type               = "t2.micro"
#   key_name                    = "AWSB31KP"
#   subnet_id                   = aws_subnet.subnet1-public.id
#   vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
#   associate_public_ip_address = true
#   tags = {
#     Name       = "Server-1"
#     Env        = "Production"
#     Owner      = "Siva"
#     CostCenter = "EMC"
#   }
#   user_data = <<-EOF
# 		#! /bin/bash
#         sudo apt-get update
# 		sudo apt-get install -y nginx
# 		sudo systemctl start nginx
# 		sudo systemctl enable nginx
# 		echo "<h1><div class="tenor-gif-embed" data-postid="19114242" data-share-method="host" data-aspect-ratio="1" data-width="50%"><a href="https://tenor.com/view/evadu-taggadamledu-sticker-andaru-baaga-aadutunnaru-nice-match-baga-aaduthunnaru-gif-19114242">Evadu Taggadamledu Sticker Sticker</a>from <a href="https://tenor.com/search/evadu+taggadamledu-stickers">Evadu Taggadamledu Stickers</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script></h1>" | sudo tee /var/www/html/index.nginx-debian.html
# 	EOF
# }