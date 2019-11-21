install-tf:
	git clone https://github.com/tfutils/tfenv.git ~/.tfenv && export PATH="$HOME/.tfenv/bin:$PATH" && tfenv install
i:
	terraform init
v:
	terraform validate
p:
	terraform plan

ivp: i v p

a:
	terraform apply --auto-approve