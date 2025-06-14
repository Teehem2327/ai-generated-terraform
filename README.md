# Terraform AWS Nginx Load Balancer Setup

This project uses **Terraform** to provision a complete AWS infrastructure with the following components:

- ✅ VPC with 2 public subnets in different Availability Zones
- ✅ Internet Gateway and Route Table
- ✅ Security Group with HTTP (port 80) access
- ✅ Application Load Balancer (ALB)
- ✅ 2 EC2 instances running Nginx in different AZs
- ✅ Auto Scaling Group and Launch Template
- ✅ S3 Bucket (demo purpose)
- ✅ User data scripts with different HTML content to demonstrate ALB traffic distribution

---

## 📁 Project Structure

terraform-nginx-lb/
├── main.tf # Main Terraform config
├── variables.tf # Input variables
├── outputs.tf # Outputs (resource IDs, ALB DNS, etc.)
├── userdata1.sh # EC2 script for AZ1
├── userdata2.sh # EC2 script for AZ2 (optional)
├── .gitignore # Git ignore file for Terraform
└── README.md # Project documentation


---

## 🚀 How to Use

### 1. Clone the Repository


git clone https://github.com/your-username/ai-generated-terraform/.git
cd terraform-nginx-lb
### 2. Initialize Terraform

terraform init
3. Set Variables (if needed)

Update the variables.tf file with your EC2 key pair:

variable "key_name" {
  default = "your-ec2-keypair-name"
}

4. Apply the Terraform Plan

terraform apply

✅ Confirm when prompted. Provisioning takes ~2–3 minutes.
🌐 Access Your Application

Once created, access your application using the output value:

alb_dns_name = http://<alb-dns-name>

You’ll see:

    Server 1 - AZ1

    or

    Server 2 - AZ2

(depending on which EC2 serves your request)
🧹 Teardown

To destroy all resources:

terraform destroy

🛡️ Notes

    The EC2 instances use Amazon Linux 2 AMI with Nginx installed via userdata.sh.

    The ALB targets both AZs and balances HTTP traffic.

    Includes a random-named S3 bucket to demonstrate additional resource management.

🧑‍💻 Author

Your Name
GitHub: @Teehem2327
