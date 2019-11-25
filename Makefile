install-tf:
	rm -rf ~/.tfenv && git clone https://github.com/tfutils/tfenv.git ~/.tfenv && export PATH="$(HOME)/.tfenv/bin:$(PATH)" && tfenv install
i:
	terraform init -backend-config=backend_$(TF_VAR_environment).tfvars -reconfigure
v:
	terraform validate
p:
	terraform plan -var-file=$(TF_VAR_environment).tfvars

ivp: i v p

a:
	terraform apply --auto-approve -var-file=$(TF_VAR_environment).tfvars