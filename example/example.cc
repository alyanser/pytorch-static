#include <torch/torch.h>
#include <iostream>

int main(){
	const auto tensor = torch::eye(3);
	std::cout << tensor << '\n';
}
