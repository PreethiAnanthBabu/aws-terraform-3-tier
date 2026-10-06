user_data = base64encode(<<-EOF
    #!/bin/bash

    dnf update -y
    dnf install -y nginx ruby wget

    systemctl enable nginx
    systemctl start nginx

    echo "<h1>AWS Terraform 3-Tier Project</h1>" > /usr/share/nginx/html/index.html
    echo "<p>Instance ID: $(curl -s http://169.254.169.254/latest/meta-data/instance-id)</p>" >> /usr/share/nginx/html/index.html

    cd /home/ec2-user

    wget https://aws-codedeploy-eu-west-1.s3.eu-west-1.amazonaws.com/latestv2/install

    chmod +x install
    ./install auto

    systemctl enable codedeploy-agent
    systemctl start codedeploy-agent
  EOF
  )