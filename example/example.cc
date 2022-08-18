#include <torch/torch.h>
#include <iostream>

int main(){
	const torch::Tensor tensor = torch::eye(3);
	std::cout << tensor << '\n';
}
